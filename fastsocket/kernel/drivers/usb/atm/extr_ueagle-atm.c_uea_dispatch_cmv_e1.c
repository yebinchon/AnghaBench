
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cmv_dsc_e1 {scalar_t__ function; scalar_t__ idx; scalar_t__ address; scalar_t__ offset; } ;
struct TYPE_5__ {struct cmv_dsc_e1 e1; } ;
struct uea_softc {int data; TYPE_1__ cmv_dsc; } ;
struct cmv_e1 {scalar_t__ bDirection; scalar_t__ bFunction; void* wPreamble; int dwData; void* wOffsetAddress; int dwSymbolicAddress; void* wIndex; } ;
struct TYPE_6__ {struct cmv_e1 cmv; } ;
struct TYPE_7__ {TYPE_2__ s2; } ;
struct TYPE_8__ {TYPE_3__ e1; } ;
struct intr_pkt {TYPE_4__ u; } ;


 scalar_t__ ADI930 ;
 int E1_ADSLDIRECTIVE ;
 scalar_t__ E1_FUNCTION_SUBTYPE (scalar_t__) ;
 scalar_t__ E1_FUNCTION_TYPE (scalar_t__) ;
 scalar_t__ E1_MAKEFUNCTION (int,int) ;
 int E1_MODEMREADY ;
 scalar_t__ E1_MODEMTOHOST ;
 scalar_t__ E1_PREAMBLE ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 void* cpu_to_le16 (scalar_t__) ;
 scalar_t__ get_unaligned_le32 (int *) ;
 scalar_t__ le16_to_cpu (void*) ;
 int put_unaligned_le32 (scalar_t__,int *) ;
 int uea_enters (int ) ;
 int uea_err (int ,char*,scalar_t__,scalar_t__) ;
 int uea_leaves (int ) ;
 int wake_up_cmv_ack (struct uea_softc*) ;

__attribute__((used)) static void uea_dispatch_cmv_e1(struct uea_softc *sc, struct intr_pkt *intr)
{
 struct cmv_dsc_e1 *dsc = &sc->cmv_dsc.e1;
 struct cmv_e1 *cmv = &intr->u.e1.s2.cmv;

 uea_enters(INS_TO_USBDEV(sc));
 if (le16_to_cpu(cmv->wPreamble) != E1_PREAMBLE)
  goto bad1;

 if (cmv->bDirection != E1_MODEMTOHOST)
  goto bad1;




 if (cmv->bFunction != dsc->function) {
  if (UEA_CHIP_VERSION(sc) == ADI930
    && cmv->bFunction == E1_MAKEFUNCTION(2, 2)) {
   cmv->wIndex = cpu_to_le16(dsc->idx);
   put_unaligned_le32(dsc->address, &cmv->dwSymbolicAddress);
   cmv->wOffsetAddress = cpu_to_le16(dsc->offset);
  } else
   goto bad2;
 }

 if (cmv->bFunction == E1_MAKEFUNCTION(E1_ADSLDIRECTIVE, E1_MODEMREADY)) {
  wake_up_cmv_ack(sc);
  uea_leaves(INS_TO_USBDEV(sc));
  return;
 }


 if (le16_to_cpu(cmv->wIndex) != dsc->idx ||
     get_unaligned_le32(&cmv->dwSymbolicAddress) != dsc->address ||
     le16_to_cpu(cmv->wOffsetAddress) != dsc->offset)
  goto bad2;

 sc->data = get_unaligned_le32(&cmv->dwData);
 sc->data = sc->data << 16 | sc->data >> 16;

 wake_up_cmv_ack(sc);
 uea_leaves(INS_TO_USBDEV(sc));
 return;

bad2:
 uea_err(INS_TO_USBDEV(sc), "unexpected cmv received, "
   "Function : %d, Subfunction : %d\n",
   E1_FUNCTION_TYPE(cmv->bFunction),
   E1_FUNCTION_SUBTYPE(cmv->bFunction));
 uea_leaves(INS_TO_USBDEV(sc));
 return;

bad1:
 uea_err(INS_TO_USBDEV(sc), "invalid cmv received, "
   "wPreamble %d, bDirection %d\n",
   le16_to_cpu(cmv->wPreamble), cmv->bDirection);
 uea_leaves(INS_TO_USBDEV(sc));
}
