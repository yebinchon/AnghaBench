
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ns; } ;
struct cgroup_pidlist {int mutex; TYPE_2__* owner; TYPE_1__ key; int list; int links; int use_count; } ;
struct TYPE_4__ {int pidlist_mutex; } ;


 int BUG_ON (int) ;
 int down_write (int *) ;
 int kfree (struct cgroup_pidlist*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pidlist_free (int ) ;
 int put_pid_ns (int ) ;
 int up_write (int *) ;

__attribute__((used)) static void cgroup_release_pid_array(struct cgroup_pidlist *l)
{






 mutex_lock(&l->owner->pidlist_mutex);
 down_write(&l->mutex);
 BUG_ON(!l->use_count);
 if (!--l->use_count) {

  list_del(&l->links);
  mutex_unlock(&l->owner->pidlist_mutex);
  pidlist_free(l->list);
  put_pid_ns(l->key.ns);
  up_write(&l->mutex);
  kfree(l);
  return;
 }
 mutex_unlock(&l->owner->pidlist_mutex);
 up_write(&l->mutex);
}
