
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int static_psymbols; } ;
struct dieinfo {char* at_element_list; scalar_t__ short_element_list; } ;


 int AT_element_list ;
 int AT_short_element_list ;
 int GET_UNSIGNED ;
 int LOC_CONST ;
 int TARGET_FT_LONG_SIZE (struct objfile*) ;
 int VAR_DOMAIN ;
 int add_psymbol_to_list (char*,scalar_t__,int ,int ,int *,int ,int ,int ,struct objfile*) ;
 int attribute_size (int ) ;
 int cu_language ;
 scalar_t__ strlen (char*) ;
 unsigned short target_to_host (char*,int,int ,struct objfile*) ;

__attribute__((used)) static void
add_enum_psymbol (struct dieinfo *dip, struct objfile *objfile)
{
  char *scan;
  char *listend;
  unsigned short blocksz;
  int nbytes;

  scan = dip->at_element_list;
  if (scan != ((void*)0))
    {
      if (dip->short_element_list)
 {
   nbytes = attribute_size (AT_short_element_list);
 }
      else
 {
   nbytes = attribute_size (AT_element_list);
 }
      blocksz = target_to_host (scan, nbytes, GET_UNSIGNED, objfile);
      scan += nbytes;
      listend = scan + blocksz;
      while (scan < listend)
 {
   scan += TARGET_FT_LONG_SIZE (objfile);
   add_psymbol_to_list (scan, strlen (scan), VAR_DOMAIN, LOC_CONST,
          &objfile->static_psymbols, 0, 0, cu_language,
          objfile);
   scan += strlen (scan) + 1;
 }
    }
}
