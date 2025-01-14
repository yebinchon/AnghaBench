
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcf_hashinfo {int dummy; } ;
struct TYPE_2__ {void* lastuse; void* install; } ;
struct tcf_common {int tcfc_refcnt; int tcfc_bindcnt; int tcfc_lock; int tcfc_rate_est; int tcfc_bstats; TYPE_1__ tcfc_tm; scalar_t__ tcfc_index; } ;
struct tc_action {void* priv; } ;
struct nlattr {int dummy; } ;


 int ENOMEM ;
 struct tcf_common* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int gen_new_estimator (int *,int *,int *,struct nlattr*) ;
 void* jiffies ;
 int kfree (struct tcf_common*) ;
 struct tcf_common* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ tcf_hash_new_index (scalar_t__*,struct tcf_hashinfo*) ;
 scalar_t__ unlikely (int) ;

struct tcf_common *tcf_hash_create(u32 index, struct nlattr *est,
       struct tc_action *a, int size, int bind,
       u32 *idx_gen, struct tcf_hashinfo *hinfo)
{
 struct tcf_common *p = kzalloc(size, GFP_KERNEL);

 if (unlikely(!p))
  return ERR_PTR(-ENOMEM);
 p->tcfc_refcnt = 1;
 if (bind)
  p->tcfc_bindcnt = 1;

 spin_lock_init(&p->tcfc_lock);
 p->tcfc_index = index ? index : tcf_hash_new_index(idx_gen, hinfo);
 p->tcfc_tm.install = jiffies;
 p->tcfc_tm.lastuse = jiffies;
 if (est) {
  int err = gen_new_estimator(&p->tcfc_bstats, &p->tcfc_rate_est,
         &p->tcfc_lock, est);
  if (err) {
   kfree(p);
   return ERR_PTR(err);
  }
 }

 a->priv = (void *) p;
 return p;
}
