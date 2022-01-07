
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct carl9170_rsp {TYPE_1__ hdr; } ;
struct TYPE_11__ {int ctrl; unsigned int totalLen; unsigned int dataSize; } ;
struct TYPE_9__ {int int_desc_available; TYPE_5__* int_desc; scalar_t__ int_pending; } ;
struct TYPE_8__ {int up_queue; } ;
struct TYPE_10__ {TYPE_3__ usb; TYPE_2__ pta; } ;


 unsigned int AR9170_BLOCK_SIZE ;
 int AR9170_CTRL_FS_BIT ;
 int AR9170_CTRL_LS_BIT ;
 unsigned int AR9170_INT_MAGIC_HEADER_SIZE ;
 int AR9170_PTA_REG_UP_DMA_TRIGGER ;
 int DBG (char*) ;
 int DESC_PAYLOAD_OFF (TYPE_5__*,unsigned int) ;
 struct carl9170_rsp* dequeue_int_buf (unsigned int) ;
 int dma_put (int *,TYPE_5__*) ;
 TYPE_4__ fw ;
 int memcpy (int ,struct carl9170_rsp*,unsigned int) ;
 int set (int ,int) ;
 int usb_reset_in () ;
 int usb_trigger_out () ;

__attribute__((used)) static void usb_status_in(void)
{
 struct carl9170_rsp *rsp;
 unsigned int rem, tlen, elen;

 if (!fw.usb.int_desc_available)
  return ;

 fw.usb.int_desc_available = 0;

 rem = AR9170_BLOCK_SIZE - AR9170_INT_MAGIC_HEADER_SIZE;
 tlen = AR9170_INT_MAGIC_HEADER_SIZE;

 usb_reset_in();

 while (fw.usb.int_pending) {
  rsp = dequeue_int_buf(rem);
  if (!rsp)
   break;

  elen = rsp->hdr.len + 4;

  memcpy(DESC_PAYLOAD_OFF(fw.usb.int_desc, tlen), rsp, elen);

  rem -= elen;
  tlen += elen;
 }

 if (tlen == AR9170_INT_MAGIC_HEADER_SIZE) {
  DBG("attempted to send an empty int response!\n");
  goto reclaim;
 }

 fw.usb.int_desc->ctrl = AR9170_CTRL_FS_BIT | AR9170_CTRL_LS_BIT;
 fw.usb.int_desc->totalLen = tlen;
 fw.usb.int_desc->dataSize = tlen;


 dma_put(&fw.pta.up_queue, fw.usb.int_desc);


 set(AR9170_PTA_REG_UP_DMA_TRIGGER, 1);
 usb_trigger_out();

 return ;

reclaim:

 fw.usb.int_desc_available = 1;
}
