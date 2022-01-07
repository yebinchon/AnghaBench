
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {struct die_info* parent; int * sibling; int * child; int offset; } ;
typedef int bfd ;


 int * read_die_and_siblings (char*,int *,struct dwarf2_cu*,char**,struct die_info*) ;
 char* read_full_die (struct die_info**,int *,char*,struct dwarf2_cu*,int*) ;
 int store_in_ref_table (int ,struct die_info*) ;

__attribute__((used)) static struct die_info *
read_die_and_children (char *info_ptr, bfd *abfd,
         struct dwarf2_cu *cu,
         char **new_info_ptr,
         struct die_info *parent)
{
  struct die_info *die;
  char *cur_ptr;
  int has_children;

  cur_ptr = read_full_die (&die, abfd, info_ptr, cu, &has_children);
  store_in_ref_table (die->offset, die);

  if (has_children)
    {
      die->child = read_die_and_siblings (cur_ptr, abfd, cu,
       new_info_ptr, die);
    }
  else
    {
      die->child = ((void*)0);
      *new_info_ptr = cur_ptr;
    }

  die->sibling = ((void*)0);
  die->parent = parent;
  return die;
}
