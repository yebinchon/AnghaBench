
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef size_t u_char ;
struct TYPE_2__ {size_t len; size_t* subs; } ;
struct mibrcvaddr {size_t ifindex; size_t addrlen; TYPE_1__ index; scalar_t__ flags; int addr; } ;
struct mibif {size_t index; } ;


 scalar_t__ ASN_MAXOIDLEN ;
 int INSERT_OBJECT_OID (struct mibrcvaddr*,int *) ;
 scalar_t__ OIDLEN_ifRcvAddressEntry ;
 struct mibrcvaddr* malloc (int) ;
 int memcpy (int ,size_t const*,size_t) ;
 int mibrcvaddr_list ;

struct mibrcvaddr *
mib_rcvaddr_create(struct mibif *ifp, const u_char *addr, size_t addrlen)
{
 struct mibrcvaddr *rcv;
 u_int i;

 if (addrlen + OIDLEN_ifRcvAddressEntry + 1 > ASN_MAXOIDLEN)
  return (((void*)0));

 if ((rcv = malloc(sizeof(*rcv))) == ((void*)0))
  return (((void*)0));
 rcv->ifindex = ifp->index;
 rcv->addrlen = addrlen;
 memcpy(rcv->addr, addr, addrlen);
 rcv->flags = 0;

 rcv->index.len = addrlen + 2;
 rcv->index.subs[0] = ifp->index;
 rcv->index.subs[1] = addrlen;
 for (i = 0; i < addrlen; i++)
  rcv->index.subs[i + 2] = addr[i];

 INSERT_OBJECT_OID(rcv, &mibrcvaddr_list);

 return (rcv);
}
