
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MANGLE_TRACE_TREE (char*,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_VEC ;
 int TREE_VEC_ELT (int ,int) ;
 int TREE_VEC_LENGTH (int ) ;
 int gcc_assert (int) ;
 int write_char (char) ;
 int write_template_arg (int ) ;

__attribute__((used)) static void
write_template_args (tree args)
{
  int i;
  int length = TREE_VEC_LENGTH (args);

  MANGLE_TRACE_TREE ("template-args", args);

  write_char ('I');

  gcc_assert (length > 0);

  if (TREE_CODE (TREE_VEC_ELT (args, 0)) == TREE_VEC)
    {


      args = TREE_VEC_ELT (args, length - 1);
      length = TREE_VEC_LENGTH (args);
    }
  for (i = 0; i < length; ++i)
    write_template_arg (TREE_VEC_ELT (args, i));

  write_char ('E');
}
