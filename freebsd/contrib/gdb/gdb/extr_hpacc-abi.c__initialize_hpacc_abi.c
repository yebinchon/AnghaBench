
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_NOSUB ;
 int constructor_pattern ;
 int destructor_pattern ;
 int hpacc_abi_ops ;
 int init_hpacc_ops () ;
 int operator_pattern ;
 int regcomp (int *,char*,int ) ;
 int register_cp_abi (int *) ;

void
_initialize_hpacc_abi (void)
{
  init_hpacc_ops ();

  regcomp (&constructor_pattern,
    "^This will never match anything, please fill it in$", REG_NOSUB);

  regcomp (&destructor_pattern,
    "^This will never match anything, please fill it in$", REG_NOSUB);

  regcomp (&operator_pattern,
    "^This will never match anything, please fill it in$", REG_NOSUB);

  register_cp_abi (&hpacc_abi_ops);
}
