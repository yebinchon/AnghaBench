
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int dummy; } ;
typedef int bfd ;


 int dwarf2_empty_hash_tables () ;
 struct die_info* read_die_and_children (char*,int *,struct dwarf2_cu*,char**,int *) ;

__attribute__((used)) static struct die_info *
read_comp_unit (char *info_ptr, bfd *abfd, struct dwarf2_cu *cu)
{


  dwarf2_empty_hash_tables ();

  return read_die_and_children (info_ptr, abfd, cu, &info_ptr, ((void*)0));
}
