
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cr_group_info; } ;
struct TYPE_3__ {int data; } ;
struct rsc {int client_name; TYPE_2__ cred; scalar_t__ mechctx; TYPE_1__ handle; } ;


 int gss_delete_sec_context (scalar_t__*) ;
 int kfree (int ) ;
 int put_group_info (scalar_t__) ;

__attribute__((used)) static void rsc_free(struct rsc *rsci)
{
 kfree(rsci->handle.data);
 if (rsci->mechctx)
  gss_delete_sec_context(&rsci->mechctx);
 if (rsci->cred.cr_group_info)
  put_group_info(rsci->cred.cr_group_info);
 kfree(rsci->client_name);
}
