
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _ioeventfd {int list; int eventfd; } ;


 int eventfd_ctx_put (int ) ;
 int kfree (struct _ioeventfd*) ;
 int list_del (int *) ;

__attribute__((used)) static void
ioeventfd_release(struct _ioeventfd *p)
{
 eventfd_ctx_put(p->eventfd);
 list_del(&p->list);
 kfree(p);
}
