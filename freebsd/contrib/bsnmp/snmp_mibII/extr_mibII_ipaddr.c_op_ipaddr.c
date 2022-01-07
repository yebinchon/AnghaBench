
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_14__ {void* s_addr; } ;
struct TYPE_13__ {void* s_addr; } ;
struct update {int set; int ifindex; int bcast; TYPE_4__ mask; TYPE_3__ addr; } ;
struct TYPE_15__ {int integer; int* ipaddress; } ;
struct TYPE_16__ {int* subs; } ;
struct snmp_value {TYPE_5__ v; TYPE_6__ var; } ;
struct snmp_context {int dummy; } ;
struct TYPE_12__ {int s_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_17__ {int* subs; } ;
struct mibifa {int ifindex; int flags; TYPE_2__ inbcast; TYPE_1__ inmask; TYPE_8__ index; } ;
struct asn_oid {int len; int* subs; } ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
typedef int asn_subid_t ;


 struct mibifa* FIND_OBJECT_OID (int *,TYPE_6__*,int) ;





 int MIBIFA_DESTROYED ;
 struct mibifa* NEXT_OBJECT_OID (int *,TYPE_6__*,int) ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int SNMP_ERR_NO_CREATION ;
 int SNMP_ERR_RES_UNAVAIL ;
 int SNMP_ERR_WRONG_VALUE ;





 int UPD_BCAST ;
 int UPD_IFINDEX ;
 int UPD_MASK ;
 void* htonl (int) ;
 int index_append (TYPE_6__*,int,TYPE_8__*) ;
 int index_decode (TYPE_6__*,int,int,int*) ;
 int mibifa_list ;
 int ntohl (int ) ;
 int oid_ipAddrTable ;
 scalar_t__ snmp_dep_lookup (struct snmp_context*,int *,struct asn_oid*,int,int ) ;
 int update_func ;

int
op_ipaddr(struct snmp_context *ctx, struct snmp_value *value,
    u_int sub, u_int iidx, enum snmp_op op)
{
 asn_subid_t which;
 struct mibifa *ifa;
 struct update *upd;
 struct asn_oid idx;
 u_char ipaddr[4];

 which = value->var.subs[sub - 1];

 ifa = ((void*)0);

 switch (op) {

   case 130:
  if ((ifa = NEXT_OBJECT_OID(&mibifa_list, &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  index_append(&value->var, sub, &ifa->index);
  break;

   case 131:
  if ((ifa = FIND_OBJECT_OID(&mibifa_list, &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  break;

   case 128:
  if (index_decode(&value->var, sub, iidx, ipaddr))
   return (SNMP_ERR_NO_CREATION);
  ifa = FIND_OBJECT_OID(&mibifa_list, &value->var, sub);
  idx.len = 4;
  idx.subs[0] = ipaddr[0];
  idx.subs[1] = ipaddr[1];
  idx.subs[2] = ipaddr[2];
  idx.subs[3] = ipaddr[3];

  if ((upd = (struct update *)snmp_dep_lookup(ctx,
      &oid_ipAddrTable, &idx, sizeof(*upd), update_func)) == ((void*)0))
   return (SNMP_ERR_RES_UNAVAIL);

  upd->addr.s_addr = htonl((ipaddr[0] << 24) | (ipaddr[1] << 16) |
      (ipaddr[2] << 8) | (ipaddr[3] << 0));

  switch (which) {

    case 135:
   if (upd->set & UPD_IFINDEX)
    return (SNMP_ERR_INCONS_VALUE);
   if (value->v.integer < 0 ||
       value->v.integer > 0x07fffffff)
    return (SNMP_ERR_WRONG_VALUE);
   if (ifa != ((void*)0)) {
    if (ifa->ifindex != (u_int)value->v.integer &&
        value->v.integer != 0)
     return (SNMP_ERR_INCONS_VALUE);
   }
   upd->set |= UPD_IFINDEX;
   upd->ifindex = (u_int)value->v.integer;
   break;

    case 134:
   if (upd->set & UPD_MASK)
    return (SNMP_ERR_INCONS_VALUE);
   upd->mask.s_addr = htonl((value->v.ipaddress[0] << 24)
       | (value->v.ipaddress[1] << 16)
       | (value->v.ipaddress[2] << 8)
       | (value->v.ipaddress[3] << 0));
   upd->set |= UPD_MASK;
   break;

    case 136:
   if (upd->set & UPD_BCAST)
    return (SNMP_ERR_INCONS_VALUE);
   if (value->v.integer != 0 && value->v.integer != 1)
    return (SNMP_ERR_WRONG_VALUE);
   upd->bcast = value->v.integer;
   upd->set |= UPD_BCAST;
   break;

  }
  return (SNMP_ERR_NOERROR);

   case 129:
   case 132:
  return (SNMP_ERR_NOERROR);
 }

 switch (which) {

   case 137:
  value->v.ipaddress[0] = ifa->index.subs[0];
  value->v.ipaddress[1] = ifa->index.subs[1];
  value->v.ipaddress[2] = ifa->index.subs[2];
  value->v.ipaddress[3] = ifa->index.subs[3];
  break;

   case 135:
  if (ifa->flags & MIBIFA_DESTROYED)
   value->v.integer = 0;
  else
   value->v.integer = ifa->ifindex;
  break;

   case 134:
  value->v.ipaddress[0] = (ntohl(ifa->inmask.s_addr) >> 24) & 0xff;
  value->v.ipaddress[1] = (ntohl(ifa->inmask.s_addr) >> 16) & 0xff;
  value->v.ipaddress[2] = (ntohl(ifa->inmask.s_addr) >> 8) & 0xff;
  value->v.ipaddress[3] = (ntohl(ifa->inmask.s_addr) >> 0) & 0xff;
  break;

   case 136:
  value->v.integer = ntohl(ifa->inbcast.s_addr) & 1;
  break;


   case 133:
  value->v.integer = 65535;
  break;
 }
 return (SNMP_ERR_NOERROR);
}
