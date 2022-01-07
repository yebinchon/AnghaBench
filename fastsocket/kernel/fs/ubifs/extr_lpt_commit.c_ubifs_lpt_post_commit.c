
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lp_mutex; scalar_t__ big_lpt; } ;


 int lpt_gc (struct ubifs_info*) ;
 int lpt_tgc_end (struct ubifs_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_write_all (struct ubifs_info*) ;

int ubifs_lpt_post_commit(struct ubifs_info *c)
{
 int err;

 mutex_lock(&c->lp_mutex);
 err = lpt_tgc_end(c);
 if (err)
  goto out;
 if (c->big_lpt)
  while (need_write_all(c)) {
   mutex_unlock(&c->lp_mutex);
   err = lpt_gc(c);
   if (err)
    return err;
   mutex_lock(&c->lp_mutex);
  }
out:
 mutex_unlock(&c->lp_mutex);
 return err;
}
