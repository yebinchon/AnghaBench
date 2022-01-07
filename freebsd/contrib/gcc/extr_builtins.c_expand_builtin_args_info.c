
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef int HOST_WIDE_INT ;
typedef int CUMULATIVE_ARGS ;


 int GEN_INT (int) ;
 int TREE_VALUE (scalar_t__) ;
 int const0_rtx ;
 int current_function_args_info ;
 int error (char*) ;
 int gcc_assert (int) ;
 int host_integerp (int ,int ) ;
 int tree_low_cst (int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_args_info (tree arglist)
{
  int nwords = sizeof (CUMULATIVE_ARGS) / sizeof (int);
  int *word_ptr = (int *) &current_function_args_info;

  gcc_assert (sizeof (CUMULATIVE_ARGS) % sizeof (int) == 0);

  if (arglist != 0)
    {
      if (!host_integerp (TREE_VALUE (arglist), 0))
 error ("argument of %<__builtin_args_info%> must be constant");
      else
 {
   HOST_WIDE_INT wordnum = tree_low_cst (TREE_VALUE (arglist), 0);

   if (wordnum < 0 || wordnum >= nwords)
     error ("argument of %<__builtin_args_info%> out of range");
   else
     return GEN_INT (word_ptr[wordnum]);
 }
    }
  else
    error ("missing argument in %<__builtin_args_info%>");

  return const0_rtx;
}
