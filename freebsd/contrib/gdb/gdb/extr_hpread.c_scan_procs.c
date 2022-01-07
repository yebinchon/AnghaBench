
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ global; } ;
union dnttentry {TYPE_1__ dfunc; } ;
struct partial_symtab {int dummy; } ;
struct objfile {int section_offsets; int static_psymbols; int global_psymbols; } ;
struct TYPE_5__ {scalar_t__ language; scalar_t__ adrStart; int isym; scalar_t__ sbProc; scalar_t__ sbAlias; } ;
typedef TYPE_2__ quick_procedure_entry ;
typedef enum hp_language { ____Placeholder_hp_language } hp_language ;
typedef int CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int CURR_PROC_END ;
 int CURR_PROC_START ;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 int LOC_BLOCK ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int TELL_OBJFILE ;
 int VAR_DOMAIN ;
 int add_psymbol_with_dem_name_to_list (char*,int ,char*,int ,int ,int ,int *,scalar_t__,int ,scalar_t__,struct objfile*) ;
 char* cplus_demangle (char*,int) ;
 union dnttentry* hpread_get_lntt (int ,struct objfile*) ;
 scalar_t__ language_cplus ;
 char* main_string ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ trans_lang (int) ;
 int warning (char*,char*,int) ;

__attribute__((used)) static int
scan_procs (int *curr_pd_p, quick_procedure_entry *qPD, int max_procs,
     CORE_ADDR start_adr, CORE_ADDR end_adr, struct partial_symtab *pst,
     char *vt_bits, struct objfile *objfile)
{
  union dnttentry *dn_bufp;
  int symbol_count = 0;
  int curr_pd = *curr_pd_p;
  while ((CURR_PROC_START <= end_adr) && (curr_pd < max_procs))
    {

      char *rtn_name;
      char *rtn_dem_name;
      char *class_name;
      int class;

      if ((trans_lang ((enum hp_language) qPD[curr_pd].language) == language_cplus) &&
   vt_bits[(long) qPD[curr_pd].sbAlias])
 {

   rtn_name = &vt_bits[(long) qPD[curr_pd].sbAlias];
   rtn_dem_name = cplus_demangle (rtn_name, DMGL_ANSI | DMGL_PARAMS);
 }
      else
 {
   rtn_name = &vt_bits[(long) qPD[curr_pd].sbProc];
   rtn_dem_name = ((void*)0);
 }



      if ((strcmp (rtn_name, "_MAIN_") == 0) &&
   (strcmp (&vt_bits[(long) qPD[curr_pd].sbProc], "main") == 0))
 rtn_dem_name = rtn_name = main_string;
      if (CURR_PROC_END > end_adr)
 {
   TELL_OBJFILE;
   warning ("Procedure \"%s\" [0x%x] spans file or module boundaries.", rtn_name, curr_pd);
 }
      dn_bufp = hpread_get_lntt (qPD[curr_pd].isym, objfile);
      if (dn_bufp->dfunc.global)
 add_psymbol_with_dem_name_to_list (rtn_name,
        strlen (rtn_name),
        rtn_dem_name,
        strlen (rtn_dem_name),
        VAR_DOMAIN,
        LOC_BLOCK,
        &objfile->global_psymbols,
        (qPD[curr_pd].adrStart +
     ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile))),
        0,
        trans_lang ((enum hp_language) qPD[curr_pd].language),
        objfile);
      else
 add_psymbol_with_dem_name_to_list (rtn_name,
        strlen (rtn_name),
        rtn_dem_name,
        strlen (rtn_dem_name),
        VAR_DOMAIN,
        LOC_BLOCK,
        &objfile->static_psymbols,
        (qPD[curr_pd].adrStart +
     ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile))),
        0,
        trans_lang ((enum hp_language) qPD[curr_pd].language),
        objfile);

      symbol_count++;
      *curr_pd_p = ++curr_pd;
    }
  return symbol_count;
}
