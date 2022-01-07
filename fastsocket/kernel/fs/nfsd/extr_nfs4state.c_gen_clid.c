
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ cl_id; int cl_boot; } ;
struct nfs4_client {TYPE_1__ cl_clientid; } ;


 int boot_time ;

__attribute__((used)) static void gen_clid(struct nfs4_client *clp)
{
 static u32 current_clientid = 1;

 clp->cl_clientid.cl_boot = boot_time;
 clp->cl_clientid.cl_id = current_clientid++;
}
