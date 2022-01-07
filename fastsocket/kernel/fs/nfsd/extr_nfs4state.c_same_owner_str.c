
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xdr_netobj {scalar_t__ len; int data; } ;
struct TYPE_6__ {scalar_t__ len; int data; } ;
struct nfs4_stateowner {TYPE_3__* so_client; TYPE_1__ so_owner; } ;
struct TYPE_9__ {scalar_t__ cl_id; } ;
typedef TYPE_4__ clientid_t ;
struct TYPE_7__ {scalar_t__ cl_id; } ;
struct TYPE_8__ {TYPE_2__ cl_clientid; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
same_owner_str(struct nfs4_stateowner *sop, struct xdr_netobj *owner,
       clientid_t *clid)
{
 return (sop->so_owner.len == owner->len) &&
  0 == memcmp(sop->so_owner.data, owner->data, owner->len) &&
  (sop->so_client->cl_clientid.cl_id == clid->cl_id);
}
