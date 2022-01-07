
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_context {int* fds; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;


 TYPE_1__* current ;

void __audit_fd_pair(int fd1, int fd2)
{
 struct audit_context *context = current->audit_context;
 context->fds[0] = fd1;
 context->fds[1] = fd2;
}
