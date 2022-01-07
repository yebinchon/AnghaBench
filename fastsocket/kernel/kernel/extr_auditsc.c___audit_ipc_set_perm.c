
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_3__ {unsigned long qbytes; int has_perm; int perm_mode; int perm_gid; int perm_uid; } ;
struct audit_context {TYPE_1__ ipc; } ;
typedef int mode_t ;
typedef int gid_t ;
struct TYPE_4__ {struct audit_context* audit_context; } ;


 TYPE_2__* current ;

void __audit_ipc_set_perm(unsigned long qbytes, uid_t uid, gid_t gid, mode_t mode)
{
 struct audit_context *context = current->audit_context;

 context->ipc.qbytes = qbytes;
 context->ipc.perm_uid = uid;
 context->ipc.perm_gid = gid;
 context->ipc.perm_mode = mode;
 context->ipc.has_perm = 1;
}
