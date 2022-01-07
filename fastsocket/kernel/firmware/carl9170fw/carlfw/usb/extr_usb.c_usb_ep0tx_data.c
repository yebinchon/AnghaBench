
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int const AR9170_USB_EP_CTRL_MAX ;
 int AR9170_USB_REG_EP0_DATA ;
 int AR9170_USB_REG_FIFO_SIZE ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int GET_ARRAY (void const*,unsigned int) ;
 int memcpy (int *,int ,unsigned int) ;
 unsigned int min (unsigned int const,unsigned int) ;
 int set (int ,int ) ;
 int setb (int ,int) ;

__attribute__((used)) static int usb_ep0tx_data(const void *data, const unsigned int len)
{
 unsigned int offset = 0, block, last_block = 0;
 uint32_t value;

 BUG_ON(len > AR9170_USB_EP_CTRL_MAX);
 BUILD_BUG_ON(len > AR9170_USB_EP_CTRL_MAX);

 block = min(len, (unsigned int) 4);
 offset = 0;
 while (offset < len) {

  if (last_block != block || block < 4)
   setb(AR9170_USB_REG_FIFO_SIZE, (1 << block) - 1);

  memcpy(&value, GET_ARRAY(data, offset), block);

  set(AR9170_USB_REG_EP0_DATA, value);

  offset += block;
  last_block = block = min(len - offset, (unsigned int) 4);
 }

 setb(AR9170_USB_REG_FIFO_SIZE, 0xf);


 return 1;
}
