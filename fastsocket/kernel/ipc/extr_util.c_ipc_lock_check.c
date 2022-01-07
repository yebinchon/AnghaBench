
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int dummy; } ;


 int EIDRM ;
 struct kern_ipc_perm* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct kern_ipc_perm*) ;
 scalar_t__ ipc_checkid (struct kern_ipc_perm*,int) ;
 struct kern_ipc_perm* ipc_lock (struct ipc_ids*,int) ;
 int ipc_unlock (struct kern_ipc_perm*) ;

struct kern_ipc_perm *ipc_lock_check(struct ipc_ids *ids, int id)
{
 struct kern_ipc_perm *out;

 out = ipc_lock(ids, id);
 if (IS_ERR(out))
  return out;

 if (ipc_checkid(out, id)) {
  ipc_unlock(out);
  return ERR_PTR(-EIDRM);
 }

 return out;
}
