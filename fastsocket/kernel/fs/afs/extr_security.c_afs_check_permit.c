
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_10__ {int i_mode; } ;
struct TYPE_9__ {int anon_access; int caller_access; } ;
struct TYPE_6__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_5__ vfs_inode; TYPE_4__ status; int flags; int permits; TYPE_3__* volume; TYPE_1__ fid; } ;
struct afs_permits {int count; struct afs_permit* permits; } ;
struct afs_permit {int access_mask; struct key* key; } ;
typedef int afs_access_t ;
struct TYPE_8__ {TYPE_2__* cell; } ;
struct TYPE_7__ {struct key* anonymous_key; } ;


 int AFS_VNODE_CB_BROKEN ;
 int ASSERT (int ) ;
 scalar_t__ IS_ERR (struct afs_vnode*) ;
 int PTR_ERR (struct afs_vnode*) ;
 int S_ISDIR (int ) ;
 int _debug (char*) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,int) ;
 struct afs_vnode* afs_get_auth_inode (struct afs_vnode*,struct key*) ;
 int afs_vnode_fetch_status (struct afs_vnode*,struct afs_vnode*,struct key*) ;
 int iput (TYPE_5__*) ;
 int key_serial (struct key*) ;
 struct afs_permits* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int afs_check_permit(struct afs_vnode *vnode, struct key *key,
       afs_access_t *_access)
{
 struct afs_permits *permits;
 struct afs_permit *permit;
 struct afs_vnode *auth_vnode;
 bool valid;
 int loop, ret;

 _enter("{%x:%u},%x",
        vnode->fid.vid, vnode->fid.vnode, key_serial(key));

 auth_vnode = afs_get_auth_inode(vnode, key);
 if (IS_ERR(auth_vnode)) {
  *_access = 0;
  _leave(" = %ld", PTR_ERR(auth_vnode));
  return PTR_ERR(auth_vnode);
 }

 ASSERT(S_ISDIR(auth_vnode->vfs_inode.i_mode));


 if (key == auth_vnode->volume->cell->anonymous_key) {
  _debug("anon");
  *_access = auth_vnode->status.anon_access;
  valid = 1;
 } else {
  valid = 0;
  rcu_read_lock();
  permits = rcu_dereference(auth_vnode->permits);
  if (permits) {
   permit = permits->permits;
   for (loop = permits->count; loop > 0; loop--) {
    if (permit->key == key) {
     _debug("found in cache");
     *_access = permit->access_mask;
     valid = 1;
     break;
    }
    permit++;
   }
  }
  rcu_read_unlock();
 }

 if (!valid) {


  _debug("no valid permit");

  set_bit(AFS_VNODE_CB_BROKEN, &vnode->flags);
  ret = afs_vnode_fetch_status(vnode, auth_vnode, key);
  if (ret < 0) {
   iput(&auth_vnode->vfs_inode);
   *_access = 0;
   _leave(" = %d", ret);
   return ret;
  }
  *_access = vnode->status.caller_access;
 }

 iput(&auth_vnode->vfs_inode);
 _leave(" = 0 [access %x]", *_access);
 return 0;
}
