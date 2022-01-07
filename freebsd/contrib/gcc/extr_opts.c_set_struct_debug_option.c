
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_struct_file { ____Placeholder_debug_struct_file } debug_struct_file ;
typedef enum debug_info_usage { ____Placeholder_debug_info_usage } debug_info_usage ;


 int DINFO_STRUCT_FILE_ANY ;
 int DINFO_STRUCT_FILE_BASE ;
 int DINFO_STRUCT_FILE_NONE ;
 int DINFO_STRUCT_FILE_SYS ;
 size_t DINFO_USAGE_DFN ;
 size_t DINFO_USAGE_DIR_USE ;
 size_t DINFO_USAGE_IND_USE ;
 int DINFO_USAGE_NUM_ENUMS ;
 scalar_t__ MATCH (char*,char const*) ;
 int* debug_struct_generic ;
 int* debug_struct_ordinary ;
 int error (char*,...) ;

void
set_struct_debug_option (const char *spec)
{

  static char dfn_lbl[] = "dfn:", dir_lbl[] = "dir:", ind_lbl[] = "ind:";
  static char ord_lbl[] = "ord:", gen_lbl[] = "gen:";
  static char none_lbl[] = "none", any_lbl[] = "any";
  static char base_lbl[] = "base", sys_lbl[] = "sys";

  enum debug_struct_file files = DINFO_STRUCT_FILE_ANY;

  enum debug_info_usage usage = DINFO_USAGE_NUM_ENUMS;
  int ord = 1, gen = 1;


  if (MATCH (dfn_lbl, spec))
    usage = DINFO_USAGE_DFN;
  else if (MATCH (dir_lbl, spec))
    usage = DINFO_USAGE_DIR_USE;
  else if (MATCH (ind_lbl, spec))
    usage = DINFO_USAGE_IND_USE;


  if (MATCH (ord_lbl, spec))
    gen = 0;
  else if (MATCH (gen_lbl, spec))
    ord = 0;


  if (MATCH (none_lbl, spec))
    files = DINFO_STRUCT_FILE_NONE;
  else if (MATCH (any_lbl, spec))
    files = DINFO_STRUCT_FILE_ANY;
  else if (MATCH (sys_lbl, spec))
    files = DINFO_STRUCT_FILE_SYS;
  else if (MATCH (base_lbl, spec))
    files = DINFO_STRUCT_FILE_BASE;
  else
    error ("argument %qs to %<-femit-struct-debug-detailed%> not recognized",
           spec);


  if (usage == DINFO_USAGE_NUM_ENUMS)
    {
      if (ord)
        {
          debug_struct_ordinary[DINFO_USAGE_DFN] = files;
          debug_struct_ordinary[DINFO_USAGE_DIR_USE] = files;
          debug_struct_ordinary[DINFO_USAGE_IND_USE] = files;
        }
      if (gen)
        {
          debug_struct_generic[DINFO_USAGE_DFN] = files;
          debug_struct_generic[DINFO_USAGE_DIR_USE] = files;
          debug_struct_generic[DINFO_USAGE_IND_USE] = files;
        }
    }
  else
    {
      if (ord)
        debug_struct_ordinary[usage] = files;
      if (gen)
        debug_struct_generic[usage] = files;
    }

  if (*spec == ',')
    set_struct_debug_option (spec+1);
  else
    {


      if (*spec != '\0')
 error ("argument %qs to %<-femit-struct-debug-detailed%> unknown",
               spec);
      if (debug_struct_ordinary[DINFO_USAGE_DIR_USE]
  < debug_struct_ordinary[DINFO_USAGE_IND_USE]
   || debug_struct_generic[DINFO_USAGE_DIR_USE]
  < debug_struct_generic[DINFO_USAGE_IND_USE])
 error ("%<-femit-struct-debug-detailed=dir:...%> must allow at least"
               " as much as %<-femit-struct-debug-detailed=ind:...%>");
    }
}
