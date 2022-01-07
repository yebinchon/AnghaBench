
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ln_fileno; TYPE_1__* ln_li; } ;
struct TYPE_9__ {char* lf_fname; scalar_t__ lf_fullpath; } ;
struct TYPE_8__ {int li_lflist; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_LineInfo ;
typedef TYPE_2__* Dwarf_LineFile ;
typedef TYPE_3__* Dwarf_Line ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_LINE_FILE_NUM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 TYPE_2__* STAILQ_FIRST (int *) ;
 TYPE_2__* STAILQ_NEXT (TYPE_2__*,int ) ;
 int assert (int ) ;
 int lf_next ;

int
dwarf_linesrc(Dwarf_Line ln, char **ret_linesrc, Dwarf_Error *error)
{
 Dwarf_LineInfo li;
 Dwarf_LineFile lf;
 int i;

 if (ln == ((void*)0) || ret_linesrc == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 li = ln->ln_li;
 assert(li != ((void*)0));

 for (i = 1, lf = STAILQ_FIRST(&li->li_lflist);
      (Dwarf_Unsigned) i < ln->ln_fileno && lf != ((void*)0);
      i++, lf = STAILQ_NEXT(lf, lf_next))
  ;

 if (lf == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_LINE_FILE_NUM_BAD);
  return (DW_DLV_ERROR);
 }

 if (lf->lf_fullpath) {
  *ret_linesrc = (char *) lf->lf_fullpath;
  return (DW_DLV_OK);
 }

 *ret_linesrc = lf->lf_fname;

 return (DW_DLV_OK);
}
