
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_sfile {int dummy; } ;
struct coff_ofile {scalar_t__ sections; } ;


 int walk_tree_sfile (scalar_t__,struct coff_sfile*) ;

__attribute__((used)) static void
wr_program_structure (struct coff_ofile *p, struct coff_sfile *sfile)
{
  walk_tree_sfile (p->sections + 4, sfile);
}
