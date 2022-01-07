
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int dummy; } ;
struct header_file_location {int instance; struct partial_symtab* pst; int name; } ;


 struct header_file_location* bincl_list ;
 struct header_file_location* next_bincl ;
 int repeated_header_complaint (char*,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int symnum ;

__attribute__((used)) static struct partial_symtab *
find_corresponding_bincl_psymtab (char *name, int instance)
{
  struct header_file_location *bincl;

  for (bincl = bincl_list; bincl < next_bincl; bincl++)
    if (bincl->instance == instance
 && strcmp (name, bincl->name) == 0)
      return bincl->pst;

  repeated_header_complaint (name, symnum);
  return (struct partial_symtab *) 0;
}
