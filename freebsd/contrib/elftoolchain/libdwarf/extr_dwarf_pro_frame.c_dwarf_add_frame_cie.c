
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct _Dwarf_Cie {int dummy; } ;
typedef scalar_t__ int8_t ;
struct TYPE_8__ {scalar_t__ cie_index; scalar_t__ cie_instlen; int * cie_initinst; void* cie_ra; scalar_t__ cie_daf; void* cie_caf; int * cie_augment; } ;
struct TYPE_7__ {int dbgp_cielen; int dbgp_cielist; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef void* Dwarf_Small ;
typedef int * Dwarf_Ptr ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef TYPE_2__* Dwarf_P_Cie ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 scalar_t__ DW_DLV_NOCOUNT ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 TYPE_2__* calloc (int,int) ;
 int cie_next ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ strdup (char*) ;

Dwarf_Unsigned
dwarf_add_frame_cie(Dwarf_P_Debug dbg, char *augmenter, Dwarf_Small caf,
    Dwarf_Small daf, Dwarf_Small ra, Dwarf_Ptr initinst,
    Dwarf_Unsigned inst_len, Dwarf_Error *error)
{
 Dwarf_P_Cie cie;

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 if ((cie = calloc(1, sizeof(struct _Dwarf_Cie))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error,DW_DLE_MEMORY);
  return (DW_DLV_NOCOUNT);
 }
 STAILQ_INSERT_TAIL(&dbg->dbgp_cielist, cie, cie_next);

 cie->cie_index = dbg->dbgp_cielen++;

 if (augmenter != ((void*)0)) {
  cie->cie_augment = (uint8_t *) strdup(augmenter);
  if (cie->cie_augment == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLV_NOCOUNT);
  }
 }

 cie->cie_caf = caf;
 cie->cie_daf = (int8_t) daf;
 cie->cie_ra = ra;
 if (initinst != ((void*)0) && inst_len > 0) {
  cie->cie_initinst = malloc((size_t) inst_len);
  if (cie->cie_initinst == ((void*)0)) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
   return (DW_DLV_NOCOUNT);
  }
  memcpy(cie->cie_initinst, initinst, inst_len);
  cie->cie_instlen = inst_len;
 }

 return (cie->cie_index);
}
