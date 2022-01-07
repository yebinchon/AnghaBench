
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pr_name; } ;
typedef TYPE_1__ dt_probe_t ;
struct TYPE_10__ {int dtpd_id; int dtpd_name; } ;
struct TYPE_8__ {int (* pit_func ) (int ,TYPE_4__*,int ) ;int pit_arg; TYPE_4__ pit_desc; int pit_hdl; int pit_matches; int pit_pat; } ;
typedef TYPE_2__ dt_probe_iter_t ;
typedef int dt_idhash_t ;
struct TYPE_9__ {int di_id; TYPE_1__* di_data; } ;
typedef TYPE_3__ dt_ident_t ;


 int DTRACE_NAMELEN ;
 int dt_gmatch (int ,int ) ;
 int strlcpy (int ,int ,int ) ;
 int stub1 (int ,TYPE_4__*,int ) ;

__attribute__((used)) static int
dt_probe_iter(dt_idhash_t *ihp, dt_ident_t *idp, dt_probe_iter_t *pit)
{
 const dt_probe_t *prp = idp->di_data;

 if (!dt_gmatch(prp->pr_name, pit->pit_pat))
  return (0);

 (void) strlcpy(pit->pit_desc.dtpd_name, prp->pr_name, DTRACE_NAMELEN);
 pit->pit_desc.dtpd_id = idp->di_id;
 pit->pit_matches++;

 return (pit->pit_func(pit->pit_hdl, &pit->pit_desc, pit->pit_arg));
}
