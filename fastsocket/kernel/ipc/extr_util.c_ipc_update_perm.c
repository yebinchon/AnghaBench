
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int mode; int gid; int uid; } ;
struct ipc64_perm {int mode; int gid; int uid; } ;


 int S_IRWXUGO ;

void ipc_update_perm(struct ipc64_perm *in, struct kern_ipc_perm *out)
{
 out->uid = in->uid;
 out->gid = in->gid;
 out->mode = (out->mode & ~S_IRWXUGO)
  | (in->mode & S_IRWXUGO);
}
