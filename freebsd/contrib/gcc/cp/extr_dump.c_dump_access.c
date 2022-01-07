
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int dump_info_p ;


 scalar_t__ TREE_PRIVATE (int ) ;
 scalar_t__ TREE_PROTECTED (int ) ;
 int dump_string_field (int ,char*,char*) ;

__attribute__((used)) static void
dump_access (dump_info_p di, tree t)
{
  if (TREE_PROTECTED(t))
    dump_string_field (di, "accs", "prot");
  else if (TREE_PRIVATE(t))
    dump_string_field (di, "accs", "priv");
  else
    dump_string_field (di, "accs", "pub");
}
