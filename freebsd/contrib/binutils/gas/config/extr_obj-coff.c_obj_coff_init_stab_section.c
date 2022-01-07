
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* segT ;
struct TYPE_3__ {int name; } ;


 int as_where (char**,unsigned int*) ;
 char* frag_more (int) ;
 unsigned int get_stab_string_offset (char*,char*) ;
 int know (int) ;
 int md_number_to_chars (char*,unsigned int,int) ;
 int memset (char*,int ,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 char* xmalloc (scalar_t__) ;

void
obj_coff_init_stab_section (segT seg)
{
  char *file;
  char *p;
  char *stabstr_name;
  unsigned int stroff;


  p = frag_more (12);

  memset (p, 0, 12);
  as_where (&file, (unsigned int *) ((void*)0));
  stabstr_name = xmalloc (strlen (seg->name) + 4);
  strcpy (stabstr_name, seg->name);
  strcat (stabstr_name, "str");
  stroff = get_stab_string_offset (file, stabstr_name);
  know (stroff == 1);
  md_number_to_chars (p, stroff, 4);
}
