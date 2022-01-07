
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;



void kernel_to_ipc64_perm (struct kern_ipc_perm *in, struct ipc64_perm *out)
{
 out->key = in->key;
 out->uid = in->uid;
 out->gid = in->gid;
 out->cuid = in->cuid;
 out->cgid = in->cgid;
 out->mode = in->mode;
 out->seq = in->seq;
}
