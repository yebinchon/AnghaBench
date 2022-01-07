
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int buffer ;
 int dump_generic_node (int *,int ,int,int,int) ;
 int maybe_init_pretty_print (int *) ;
 int pp_flush (int *) ;
 int pp_space (int *) ;

void
print_generic_stmt_indented (FILE *file, tree t, int flags, int indent)
{
  int i;

  maybe_init_pretty_print (file);

  for (i = 0; i < indent; i++)
    pp_space (&buffer);
  dump_generic_node (&buffer, t, indent, flags, 1);
  pp_flush (&buffer);
}
