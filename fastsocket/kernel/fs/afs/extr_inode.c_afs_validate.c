
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {scalar_t__ cb_expires; int validate_lock; int flags; scalar_t__ cb_promised; TYPE_1__ fid; } ;


 int AFS_VNODE_CB_BROKEN ;
 int AFS_VNODE_DELETED ;
 int AFS_VNODE_MODIFIED ;
 int AFS_VNODE_ZAP_DATA ;
 int ESTALE ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ,int ) ;
 int _leave (char*,...) ;
 int afs_vnode_fetch_status (struct afs_vnode*,int *,struct key*) ;
 int afs_zap_data (struct afs_vnode*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ get_seconds () ;
 int key_serial (struct key*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int afs_validate(struct afs_vnode *vnode, struct key *key)
{
 int ret;

 _enter("{v={%x:%u} fl=%lx},%x",
        vnode->fid.vid, vnode->fid.vnode, vnode->flags,
        key_serial(key));

 if (vnode->cb_promised &&
     !test_bit(AFS_VNODE_CB_BROKEN, &vnode->flags) &&
     !test_bit(AFS_VNODE_MODIFIED, &vnode->flags) &&
     !test_bit(AFS_VNODE_ZAP_DATA, &vnode->flags)) {
  if (vnode->cb_expires < get_seconds() + 10) {
   _debug("callback expired");
   set_bit(AFS_VNODE_CB_BROKEN, &vnode->flags);
  } else {
   goto valid;
  }
 }

 if (test_bit(AFS_VNODE_DELETED, &vnode->flags))
  goto valid;

 mutex_lock(&vnode->validate_lock);





 if (!vnode->cb_promised ||
     test_bit(AFS_VNODE_CB_BROKEN, &vnode->flags)) {
  _debug("not promised");
  ret = afs_vnode_fetch_status(vnode, ((void*)0), key);
  if (ret < 0)
   goto error_unlock;
  _debug("new promise [fl=%lx]", vnode->flags);
 }

 if (test_bit(AFS_VNODE_DELETED, &vnode->flags)) {
  _debug("file already deleted");
  ret = -ESTALE;
  goto error_unlock;
 }



 if (test_and_clear_bit(AFS_VNODE_ZAP_DATA, &vnode->flags))
  afs_zap_data(vnode);

 clear_bit(AFS_VNODE_MODIFIED, &vnode->flags);
 mutex_unlock(&vnode->validate_lock);
valid:
 _leave(" = 0");
 return 0;

error_unlock:
 mutex_unlock(&vnode->validate_lock);
 _leave(" = %d", ret);
 return ret;
}
