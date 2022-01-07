
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sock; } ;
struct ipxhdr {TYPE_1__ ipx_dest; } ;
struct ipx_interface {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct ipxhdr* ipx_hdr (struct sk_buff*) ;
 struct ipx_interface* ipx_primary_net ;
 int ipxitf_def_skb_handler (struct sock*,struct sk_buff*) ;
 struct sock* ipxitf_find_socket (struct ipx_interface*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct sock* ncp_connection_hack (struct ipx_interface*,struct ipxhdr*) ;
 int ntohs (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static int ipxitf_demux_socket(struct ipx_interface *intrfc,
          struct sk_buff *skb, int copy)
{
 struct ipxhdr *ipx = ipx_hdr(skb);
 struct sock *sock1 = ((void*)0), *sock2 = ((void*)0);
 struct sk_buff *skb1 = ((void*)0), *skb2 = ((void*)0);
 int rc;

 if (intrfc == ipx_primary_net && ntohs(ipx->ipx_dest.sock) == 0x451)
  sock1 = ncp_connection_hack(intrfc, ipx);
 if (!sock1)

  sock1 = ipxitf_find_socket(intrfc, ipx->ipx_dest.sock);
 if (ipx_primary_net && intrfc != ipx_primary_net) {
  const int dsock = ntohs(ipx->ipx_dest.sock);

  if (dsock == 0x452 || dsock == 0x453 || dsock == 0x456)




   sock2 = ipxitf_find_socket(ipx_primary_net,
       ipx->ipx_dest.sock);
 }




 rc = 0;
 if (!sock1 && !sock2) {
  if (!copy)
   kfree_skb(skb);
  goto out;
 }
 if (copy)
  skb1 = skb_clone(skb, GFP_ATOMIC);
 else
  skb1 = skb;

 rc = -ENOMEM;
 if (!skb1)
  goto out_put;


 if (sock1 && sock2)
  skb2 = skb_clone(skb1, GFP_ATOMIC);
 else
  skb2 = skb1;

 if (sock1)
  ipxitf_def_skb_handler(sock1, skb1);

 if (!skb2)
  goto out_put;

 if (sock2)
  ipxitf_def_skb_handler(sock2, skb2);

 rc = 0;
out_put:
 if (sock1)
  sock_put(sock1);
 if (sock2)
  sock_put(sock2);
out:
 return rc;
}
