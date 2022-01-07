
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct tree_niter_desc {int niter; int may_be_zero; } ;
struct nfe_cache_elt {int niter; int exit; } ;
struct ivopts_data {int current_loop; int niters; } ;
typedef int edge ;
typedef struct nfe_cache_elt* PTR ;


 int INSERT ;
 int NULL_TREE ;
 int contains_abnormal_ssa_name_p (int ) ;
 struct nfe_cache_elt** htab_find_slot_with_hash (int ,int ,int ,int ) ;
 int htab_hash_pointer (int ) ;
 scalar_t__ number_of_iterations_exit (int ,int ,struct tree_niter_desc*,int) ;
 struct nfe_cache_elt* xmalloc (int) ;
 scalar_t__ zero_p (int ) ;

__attribute__((used)) static tree
niter_for_exit (struct ivopts_data *data, edge exit)
{
  struct nfe_cache_elt *nfe_desc;
  struct tree_niter_desc desc;
  PTR *slot;

  slot = htab_find_slot_with_hash (data->niters, exit,
       htab_hash_pointer (exit),
       INSERT);

  if (!*slot)
    {
      nfe_desc = xmalloc (sizeof (struct nfe_cache_elt));
      nfe_desc->exit = exit;






      if (number_of_iterations_exit (data->current_loop,
         exit, &desc, 1)
   && zero_p (desc.may_be_zero)
        && !contains_abnormal_ssa_name_p (desc.niter))
 nfe_desc->niter = desc.niter;
      else
 nfe_desc->niter = NULL_TREE;
    }
  else
    nfe_desc = *slot;

  return nfe_desc->niter;
}
