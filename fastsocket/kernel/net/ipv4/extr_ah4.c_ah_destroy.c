
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct ah_data* data; } ;
struct ah_data {int tfm; struct ah_data* work_icv; } ;


 int crypto_free_hash (int ) ;
 int kfree (struct ah_data*) ;

__attribute__((used)) static void ah_destroy(struct xfrm_state *x)
{
 struct ah_data *ahp = x->data;

 if (!ahp)
  return;

 kfree(ahp->work_icv);
 crypto_free_hash(ahp->tfm);
 kfree(ahp);
}
