
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int buffer ;
 int dump_generic_node (int *,int ,int ,int,int) ;
 int maybe_init_pretty_print (int *) ;

void
print_generic_expr (FILE *file, tree t, int flags)
{
  maybe_init_pretty_print (file);
  dump_generic_node (&buffer, t, 0, flags, 0);
}
