
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int num; } ;
typedef int htab_t ;


 int INSERT_SUPERLOOP_CHRECS ;
 int TDF_DETAILS ;
 int del_scev_info ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int eq_scev_info ;
 int fprintf (scalar_t__,char*,...) ;
 int hash_scev_info ;
 int htab_create (int,int ,int ,int ) ;
 int htab_delete (int ) ;
 int instantiate_parameters_1 (struct loop*,int ,int ,int ,int ) ;
 int print_generic_expr (scalar_t__,int ,int ) ;

tree
instantiate_parameters (struct loop *loop,
   tree chrec)
{
  tree res;
  htab_t cache = htab_create (10, hash_scev_info, eq_scev_info, del_scev_info);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "(instantiate_parameters \n");
      fprintf (dump_file, "  (loop_nb = %d)\n", loop->num);
      fprintf (dump_file, "  (chrec = ");
      print_generic_expr (dump_file, chrec, 0);
      fprintf (dump_file, ")\n");
    }

  res = instantiate_parameters_1 (loop, chrec, INSERT_SUPERLOOP_CHRECS, cache,
      0);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (res = ");
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, "))\n");
    }

  htab_delete (cache);

  return res;
}
