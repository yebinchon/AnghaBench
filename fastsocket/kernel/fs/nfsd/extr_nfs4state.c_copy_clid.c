
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_id; int cl_boot; } ;
struct nfs4_client {TYPE_1__ cl_clientid; } ;



__attribute__((used)) static void copy_clid(struct nfs4_client *target, struct nfs4_client *source)
{
 target->cl_clientid.cl_boot = source->cl_clientid.cl_boot;
 target->cl_clientid.cl_id = source->cl_clientid.cl_id;
}
