
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempolicy {int flags; } ;


 int MPOL_F_SHARED ;
 int __mpol_put (struct mempolicy*) ;
 int mpol_needs_cond_ref (struct mempolicy*) ;

struct mempolicy *__mpol_cond_copy(struct mempolicy *tompol,
      struct mempolicy *frompol)
{
 if (!mpol_needs_cond_ref(frompol))
  return frompol;

 *tompol = *frompol;
 tompol->flags &= ~MPOL_F_SHARED;
 __mpol_put(frompol);
 return tompol;
}
