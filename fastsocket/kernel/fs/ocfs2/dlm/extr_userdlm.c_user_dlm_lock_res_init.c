
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_lock_res {scalar_t__ l_namelen; int l_name; void* l_blocking; void* l_requested; void* l_level; int l_event; int l_lock; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int BUG_ON (int) ;
 void* LKM_IVMODE ;
 scalar_t__ USER_DLM_LOCK_ID_MAX_LEN ;
 int init_waitqueue_head (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct user_lock_res*,int ,int) ;
 int spin_lock_init (int *) ;

void user_dlm_lock_res_init(struct user_lock_res *lockres,
       struct dentry *dentry)
{
 memset(lockres, 0, sizeof(*lockres));

 spin_lock_init(&lockres->l_lock);
 init_waitqueue_head(&lockres->l_event);
 lockres->l_level = LKM_IVMODE;
 lockres->l_requested = LKM_IVMODE;
 lockres->l_blocking = LKM_IVMODE;


 BUG_ON(dentry->d_name.len >= USER_DLM_LOCK_ID_MAX_LEN);

 memcpy(lockres->l_name,
        dentry->d_name.name,
        dentry->d_name.len);
 lockres->l_namelen = dentry->d_name.len;
}
