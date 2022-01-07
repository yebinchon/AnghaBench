
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec ;
struct socket {int dummy; } ;
struct ncp_request_reply {int tx_iovlen; int tx_totallen; int tx_ciov; } ;
struct kvec {int dummy; } ;


 int MSG_DONTWAIT ;
 int do_send (struct socket*,struct kvec*,int,int ,int ) ;
 int memcpy (struct kvec*,int ,int) ;

__attribute__((used)) static int ncpdgram_send(struct socket *sock, struct ncp_request_reply *req)
{
 struct kvec vec[3];

 memcpy(vec, req->tx_ciov, req->tx_iovlen * sizeof(vec[0]));
 return do_send(sock, vec, req->tx_iovlen,
         req->tx_totallen, MSG_DONTWAIT);
}
