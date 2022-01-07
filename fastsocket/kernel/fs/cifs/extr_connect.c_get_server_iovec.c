
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int dummy; } ;
struct TCP_Server_Info {unsigned int nr_iov; struct kvec* iov; } ;


 int GFP_NOFS ;
 int kfree (struct kvec*) ;
 struct kvec* kmalloc (int,int ) ;

__attribute__((used)) static struct kvec *
get_server_iovec(struct TCP_Server_Info *server, unsigned int nr_segs)
{
 struct kvec *new_iov;

 if (server->iov && nr_segs <= server->nr_iov)
  return server->iov;


 new_iov = kmalloc(sizeof(*new_iov) * nr_segs, GFP_NOFS);
 if (new_iov) {
  kfree(server->iov);
  server->iov = new_iov;
  server->nr_iov = nr_segs;
 }
 return new_iov;
}
