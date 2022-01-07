
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {int len; int* subs; } ;
struct in_addr {int s_addr; } ;
struct mibifa {TYPE_3__ inmask; TYPE_2__ inbcast; scalar_t__ flags; TYPE_1__ index; struct in_addr inaddr; int ifindex; } ;


 int INSERT_OBJECT_OID (struct mibifa*,int *) ;
 int LOG_ERR ;
 struct mibifa* malloc (int) ;
 int mibifa_list ;
 int ntohl (int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static struct mibifa *
alloc_ifa(u_int ifindex, struct in_addr addr)
{
 struct mibifa *ifa;
 uint32_t ha;

 if ((ifa = malloc(sizeof(struct mibifa))) == ((void*)0)) {
  syslog(LOG_ERR, "ifa: %m");
  return (((void*)0));
 }
 ifa->inaddr = addr;
 ifa->ifindex = ifindex;

 ha = ntohl(ifa->inaddr.s_addr);
 ifa->index.len = 4;
 ifa->index.subs[0] = (ha >> 24) & 0xff;
 ifa->index.subs[1] = (ha >> 16) & 0xff;
 ifa->index.subs[2] = (ha >> 8) & 0xff;
 ifa->index.subs[3] = (ha >> 0) & 0xff;

 ifa->flags = 0;
 ifa->inbcast.s_addr = 0;
 ifa->inmask.s_addr = 0xffffffff;

 INSERT_OBJECT_OID(ifa, &mibifa_list);

 return (ifa);
}
