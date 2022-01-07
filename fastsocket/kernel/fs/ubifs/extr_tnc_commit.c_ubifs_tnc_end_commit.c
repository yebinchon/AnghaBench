
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* znode; } ;
struct ubifs_info {int tnc_mutex; int * ilebs; int * cnext; TYPE_1__ zroot; } ;
struct TYPE_4__ {scalar_t__ level; } ;


 int dbg_cmt (char*,scalar_t__) ;
 int free_obsolete_znodes (struct ubifs_info*) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int return_gap_lebs (struct ubifs_info*) ;
 int write_index (struct ubifs_info*) ;

int ubifs_tnc_end_commit(struct ubifs_info *c)
{
 int err;

 if (!c->cnext)
  return 0;

 err = return_gap_lebs(c);
 if (err)
  return err;

 err = write_index(c);
 if (err)
  return err;

 mutex_lock(&c->tnc_mutex);

 dbg_cmt("TNC height is %d", c->zroot.znode->level + 1);

 free_obsolete_znodes(c);

 c->cnext = ((void*)0);
 kfree(c->ilebs);
 c->ilebs = ((void*)0);

 mutex_unlock(&c->tnc_mutex);

 return 0;
}
