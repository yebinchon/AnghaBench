
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans {int flags; int result; } ;
struct netfs_state {int psb; } ;


 int NETFS_TRANS_SINGLE_DST ;
 int netfs_trans_drop_last (struct netfs_trans*,struct netfs_state*) ;
 int netfs_trans_push_dst (struct netfs_trans*,struct netfs_state*) ;
 int netfs_trans_send (struct netfs_trans*,struct netfs_state*) ;
 int pohmelfs_switch_active (int ) ;

__attribute__((used)) static int netfs_trans_push(struct netfs_trans *t, struct netfs_state *st)
{
 int err;

 err = netfs_trans_push_dst(t, st);
 if (err)
  return err;

 err = netfs_trans_send(t, st);
 if (err)
  goto err_out_free;

 if (t->flags & NETFS_TRANS_SINGLE_DST)
  pohmelfs_switch_active(st->psb);

 return 0;

err_out_free:
 t->result = err;
 netfs_trans_drop_last(t, st);

 return err;
}
