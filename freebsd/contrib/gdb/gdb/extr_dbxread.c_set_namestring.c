
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct internal_nlist {char* n_strx; } ;


 int DBX_STRINGTAB (struct objfile*) ;
 unsigned int DBX_STRINGTAB_SIZE (struct objfile*) ;
 int complaint (int *,char*,int ) ;
 unsigned int file_string_table_offset ;
 int symfile_complaints ;
 int symnum ;

__attribute__((used)) static char *
set_namestring (struct objfile *objfile, struct internal_nlist nlist)
{
  char *namestring;

  if (((unsigned) nlist.n_strx + file_string_table_offset) >=
      DBX_STRINGTAB_SIZE (objfile))
    {
      complaint (&symfile_complaints, "bad string table offset in symbol %d",
   symnum);
      namestring = "<bad string table offset>";
    }
  else
    namestring = nlist.n_strx + file_string_table_offset +
      DBX_STRINGTAB (objfile);
  return namestring;
}
