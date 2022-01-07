
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lp_mutex; int lpt_cnext; } ;


 int dbg_lp (char*) ;
 int free_obsolete_cnodes (struct ubifs_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_cnodes (struct ubifs_info*) ;

int ubifs_lpt_end_commit(struct ubifs_info *c)
{
 int err;

 dbg_lp("");

 if (!c->lpt_cnext)
  return 0;

 err = write_cnodes(c);
 if (err)
  return err;

 mutex_lock(&c->lp_mutex);
 free_obsolete_cnodes(c);
 mutex_unlock(&c->lp_mutex);

 return 0;
}
