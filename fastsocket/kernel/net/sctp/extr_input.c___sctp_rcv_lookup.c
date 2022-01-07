
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;


 struct sctp_association* __sctp_lookup_association (union sctp_addr const*,union sctp_addr const*,struct sctp_transport**) ;
 struct sctp_association* __sctp_rcv_lookup_harder (struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_lookup(struct sk_buff *skb,
          const union sctp_addr *paddr,
          const union sctp_addr *laddr,
          struct sctp_transport **transportp)
{
 struct sctp_association *asoc;

 asoc = __sctp_lookup_association(laddr, paddr, transportp);





 if (!asoc)
  asoc = __sctp_rcv_lookup_harder(skb, laddr, transportp);

 return asoc;
}
