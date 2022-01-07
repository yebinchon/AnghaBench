
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {scalar_t__ id; TYPE_2__ info; } ;


 int AddrLong ;
 int BA (int ,int ,int ,int ,int ,int ,int ) ;
 int BAIndexBase (int ) ;
 int BAJustPoint (int ) ;
 int BGx (int ) ;
 int BINattr ;
 int BitmapExtent08 ;
 int DataDynamic ;
 int FGx (int ) ;
 int GET_FIFO_SLOTS (struct stifb_info*,int,int) ;
 int IBOvals (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IndexedDcd ;
 int MaskAddrOffset (int ) ;
 int MaskOtc ;
 int NGLE_LOCK (struct stifb_info*) ;
 int NGLE_QUICK_SET_CTL_PLN_REG (struct stifb_info*,unsigned int) ;
 int NGLE_QUICK_SET_DST_BM_ACCESS (struct stifb_info*,int ) ;
 int NGLE_QUICK_SET_IMAGE_BITMAP_OP (struct stifb_info*,int ) ;
 int NGLE_SET_DSTXY (struct stifb_info*,int) ;
 int NGLE_SET_TRANSFERDATA (struct stifb_info*,int) ;
 int NGLE_UNLOCK (struct stifb_info*) ;
 int Otc32 ;
 int OtsIndirect ;
 int RopSrc ;
 scalar_t__ S9000_ID_A1659A ;
 int SET_LENXY_START_RECFILL (struct stifb_info*,int) ;
 int StaticReg (int) ;

__attribute__((used)) static void
ngleResetAttrPlanes(struct stifb_info *fb, unsigned int ctlPlaneReg)
{
 int nFreeFifoSlots = 0;
 u32 packed_dst;
 u32 packed_len;

 NGLE_LOCK(fb);

 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 4);
 NGLE_QUICK_SET_DST_BM_ACCESS(fb,
         BA(IndexedDcd, Otc32, OtsIndirect,
     AddrLong, BAJustPoint(0),
     BINattr, BAIndexBase(0)));
 NGLE_QUICK_SET_CTL_PLN_REG(fb, ctlPlaneReg);
 NGLE_SET_TRANSFERDATA(fb, 0xffffffff);

 NGLE_QUICK_SET_IMAGE_BITMAP_OP(fb,
           IBOvals(RopSrc, MaskAddrOffset(0),
            BitmapExtent08, StaticReg(1),
            DataDynamic, MaskOtc,
            BGx(0), FGx(0)));
 packed_dst = 0;
 packed_len = (fb->info.var.xres << 16) | fb->info.var.yres;
 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 2);
 NGLE_SET_DSTXY(fb, packed_dst);
 SET_LENXY_START_RECFILL(fb, packed_len);
 if (fb->id == S9000_ID_A1659A) {

  packed_dst = (1280 << 16);
  GET_FIFO_SLOTS(fb, nFreeFifoSlots, 2);
  NGLE_SET_DSTXY(fb, packed_dst);
  packed_len = (4 << 16) | 1;
  SET_LENXY_START_RECFILL(fb, packed_len);
 }


 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 1);
 NGLE_QUICK_SET_CTL_PLN_REG(fb, 0);

 NGLE_UNLOCK(fb);
}
