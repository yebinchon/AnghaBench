
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int const AR9170_USB_EP_CTRL_MAX ;
 int AR9170_USB_REG_EP0_DATA ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int GET_ARRAY (void const*,unsigned int) ;
 int get (int ) ;
 int memcpy (int ,int *,int ) ;
 int min (unsigned int const,unsigned int) ;

__attribute__((used)) static void usb_ep0rx_data(const void *data, const unsigned int len)
{
 unsigned int offset;
 uint32_t value;

 BUG_ON(len > AR9170_USB_EP_CTRL_MAX);
 BUILD_BUG_ON(len > AR9170_USB_EP_CTRL_MAX);

 for (offset = 0; offset < ((len + 3) & ~3); offset += 4) {
  value = get(AR9170_USB_REG_EP0_DATA);
  memcpy(GET_ARRAY(data, offset), &value,
         min(len - offset, (unsigned int)4));
 }
}
