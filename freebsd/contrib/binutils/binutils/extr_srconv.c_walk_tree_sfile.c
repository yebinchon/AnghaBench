
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_sfile {int scope; } ;
struct coff_section {int dummy; } ;


 int BLOCK_TYPE_COMPUNIT ;
 int walk_tree_scope (struct coff_section*,struct coff_sfile*,int ,int ,int ) ;

__attribute__((used)) static void
walk_tree_sfile (struct coff_section *section, struct coff_sfile *sfile)
{
  walk_tree_scope (section, sfile, sfile->scope, 0, BLOCK_TYPE_COMPUNIT);
}
