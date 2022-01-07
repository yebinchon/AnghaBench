
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct mibif {int index; } ;
struct TYPE_2__ {int len; int* subs; } ;
struct mibarp {int physlen; int phys; TYPE_1__ index; scalar_t__ flags; } ;
struct in_addr {int s_addr; } ;


 int INSERT_OBJECT_OID (struct mibarp*,int *) ;
 struct mibarp* malloc (int) ;
 int memcpy (int ,int const*,int) ;
 int mibarp_list ;
 int ntohl (int ) ;

struct mibarp *
mib_arp_create(const struct mibif *ifp, struct in_addr in, const u_char *phys,
    size_t physlen)
{
 struct mibarp *at;
 uint32_t a = ntohl(in.s_addr);

 if ((at = malloc(sizeof(*at))) == ((void*)0))
  return (((void*)0));
 at->flags = 0;

 at->index.len = 5;
 at->index.subs[0] = ifp->index;
 at->index.subs[1] = (a >> 24) & 0xff;
 at->index.subs[2] = (a >> 16) & 0xff;
 at->index.subs[3] = (a >> 8) & 0xff;
 at->index.subs[4] = (a >> 0) & 0xff;
 if ((at->physlen = physlen) > sizeof(at->phys))
  at->physlen = sizeof(at->phys);
 memcpy(at->phys, phys, at->physlen);

 INSERT_OBJECT_OID(at, &mibarp_list);

 return (at);
}
