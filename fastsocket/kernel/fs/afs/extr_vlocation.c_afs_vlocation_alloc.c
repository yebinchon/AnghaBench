
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct afs_vlocation {TYPE_1__ vldb; int lock; int waitq; int update; int grave; int link; int usage; int state; struct afs_cell* cell; } ;
struct afs_cell {int dummy; } ;


 int AFS_VL_NEW ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int _leave (char*,struct afs_vlocation*) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct afs_vlocation* kzalloc (int,int ) ;
 int memcpy (int ,char const*,size_t) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct afs_vlocation *afs_vlocation_alloc(struct afs_cell *cell,
       const char *name,
       size_t namesz)
{
 struct afs_vlocation *vl;

 vl = kzalloc(sizeof(struct afs_vlocation), GFP_KERNEL);
 if (vl) {
  vl->cell = cell;
  vl->state = AFS_VL_NEW;
  atomic_set(&vl->usage, 1);
  INIT_LIST_HEAD(&vl->link);
  INIT_LIST_HEAD(&vl->grave);
  INIT_LIST_HEAD(&vl->update);
  init_waitqueue_head(&vl->waitq);
  spin_lock_init(&vl->lock);
  memcpy(vl->vldb.name, name, namesz);
 }

 _leave(" = %p", vl);
 return vl;
}
