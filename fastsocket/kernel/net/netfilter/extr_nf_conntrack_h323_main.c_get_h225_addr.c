
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;
typedef union nf_inet_addr __be16 ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {int ip; } ;
struct TYPE_7__ {int choice; TYPE_1__ ip6Address; TYPE_2__ ipAddress; } ;
typedef TYPE_3__ TransportAddress ;


 int AF_INET ;
 int AF_INET6 ;


 int memcpy (union nf_inet_addr*,unsigned char const*,int) ;
 int memset (void*,int ,int) ;
 int nf_ct_l3num (struct nf_conn*) ;

int get_h225_addr(struct nf_conn *ct, unsigned char *data,
    TransportAddress *taddr,
    union nf_inet_addr *addr, __be16 *port)
{
 const unsigned char *p;
 int len;

 switch (taddr->choice) {
 case 128:
  if (nf_ct_l3num(ct) != AF_INET)
   return 0;
  p = data + taddr->ipAddress.ip;
  len = 4;
  break;
 case 129:
  if (nf_ct_l3num(ct) != AF_INET6)
   return 0;
  p = data + taddr->ip6Address.ip;
  len = 16;
  break;
 default:
  return 0;
 }

 memcpy(addr, p, len);
 memset((void *)addr + len, 0, sizeof(*addr) - len);
 memcpy(port, p + len, sizeof(__be16));

 return 1;
}
