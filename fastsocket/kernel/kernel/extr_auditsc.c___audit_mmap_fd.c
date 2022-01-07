
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int flags; } ;
struct audit_context {int type; TYPE_1__ mmap; } ;
struct TYPE_4__ {struct audit_context* audit_context; } ;


 int AUDIT_MMAP ;
 TYPE_2__* current ;

void __audit_mmap_fd(int fd, int flags)
{
 struct audit_context *context = current->audit_context;
 context->mmap.fd = fd;
 context->mmap.flags = flags;
 context->type = AUDIT_MMAP;
}
