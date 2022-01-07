
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct audit_context {int sockaddr_len; void* sockaddr; scalar_t__ dummy; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* current ;
 void* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,void*,int) ;

int audit_sockaddr(int len, void *a)
{
 struct audit_context *context = current->audit_context;

 if (likely(!context || context->dummy))
  return 0;

 if (!context->sockaddr) {
  void *p = kmalloc(sizeof(struct sockaddr_storage), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
  context->sockaddr = p;
 }

 context->sockaddr_len = len;
 memcpy(context->sockaddr, a, len);
 return 0;
}
