
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
typedef int htab_t ;


 int FOLD_CONVERSIONS ;
 int del_scev_info ;
 int eq_scev_info ;
 int hash_scev_info ;
 int htab_create (int,int ,int ,int ) ;
 int htab_delete (int ) ;
 int instantiate_parameters_1 (struct loop*,int ,int ,int ,int ) ;

__attribute__((used)) static tree
resolve_mixers (struct loop *loop, tree chrec)
{
  htab_t cache = htab_create (10, hash_scev_info, eq_scev_info, del_scev_info);
  tree ret = instantiate_parameters_1 (loop, chrec, FOLD_CONVERSIONS, cache, 0);
  htab_delete (cache);
  return ret;
}
