
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {struct netfs_state* state; } ;
struct netfs_state {int trans_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netfs_trans_remove_nolock (struct netfs_trans_dst*,struct netfs_state*) ;

__attribute__((used)) static int netfs_trans_remove_state(struct netfs_trans_dst *dst)
{
 int ret;
 struct netfs_state *st = dst->state;

 mutex_lock(&st->trans_lock);
 ret = netfs_trans_remove_nolock(dst, st);
 mutex_unlock(&st->trans_lock);

 return ret;
}
