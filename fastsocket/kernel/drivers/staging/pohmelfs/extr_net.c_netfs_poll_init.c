
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netfs_state {TYPE_2__* socket; } ;
struct netfs_poll_helper {int pt; struct netfs_state* st; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* poll ) (int *,TYPE_2__*,int *) ;} ;


 int init_poll_funcptr (int *,int *) ;
 int netfs_queue_func ;
 int stub1 (int *,TYPE_2__*,int *) ;

__attribute__((used)) static int netfs_poll_init(struct netfs_state *st)
{
 struct netfs_poll_helper ph;

 ph.st = st;
 init_poll_funcptr(&ph.pt, &netfs_queue_func);

 st->socket->ops->poll(((void*)0), st->socket, &ph.pt);
 return 0;
}
