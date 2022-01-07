
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_node {unsigned long start; unsigned long end; struct mempolicy* policy; } ;
struct mempolicy {int flags; } ;


 int GFP_KERNEL ;
 int MPOL_F_SHARED ;
 struct sp_node* kmem_cache_alloc (int ,int ) ;
 int mpol_get (struct mempolicy*) ;
 int sn_cache ;

__attribute__((used)) static struct sp_node *sp_alloc(unsigned long start, unsigned long end,
    struct mempolicy *pol)
{
 struct sp_node *n = kmem_cache_alloc(sn_cache, GFP_KERNEL);

 if (!n)
  return ((void*)0);
 n->start = start;
 n->end = end;
 mpol_get(pol);
 pol->flags |= MPOL_F_SHARED;
 n->policy = pol;
 return n;
}
