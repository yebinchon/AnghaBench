
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {scalar_t__ info_sock; } ;
struct kvec {int iov_len; int * iov_base; } ;
typedef int __be32 ;


 int MSG_NOSIGNAL ;
 int cpu_to_be32 (unsigned int) ;
 int do_send (scalar_t__,struct kvec*,int,size_t,int ) ;

__attribute__((used)) static void info_server(struct ncp_server *server, unsigned int id, const void * data, size_t len)
{
 if (server->info_sock) {
  struct kvec iov[2];
  __be32 hdr[2];

  hdr[0] = cpu_to_be32(len + 8);
  hdr[1] = cpu_to_be32(id);

  iov[0].iov_base = hdr;
  iov[0].iov_len = 8;
  iov[1].iov_base = (void *) data;
  iov[1].iov_len = len;

  do_send(server->info_sock, iov, 2, len + 8, MSG_NOSIGNAL);
 }
}
