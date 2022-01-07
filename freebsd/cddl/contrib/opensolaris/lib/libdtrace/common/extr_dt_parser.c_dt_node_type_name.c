
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dn_flags; int dn_type; int dn_ctfp; int * dn_ident; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_6__ {int di_kind; } ;


 int DT_NF_USERLAND ;
 TYPE_4__* dt_ident_resolve (int *) ;
 char* dt_idkind_name (int ) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__ const*) ;
 char const* dt_type_name (int ,int ,char*,size_t) ;
 size_t snprintf (char*,size_t,char*,...) ;

const char *
dt_node_type_name(const dt_node_t *dnp, char *buf, size_t len)
{
 if (dt_node_is_dynamic(dnp) && dnp->dn_ident != ((void*)0)) {
  (void) snprintf(buf, len, "%s",
      dt_idkind_name(dt_ident_resolve(dnp->dn_ident)->di_kind));
  return (buf);
 }

 if (dnp->dn_flags & DT_NF_USERLAND) {
  size_t n = snprintf(buf, len, "userland ");
  len = len > n ? len - n : 0;
  (void) dt_type_name(dnp->dn_ctfp, dnp->dn_type, buf + n, len);
  return (buf);
 }

 return (dt_type_name(dnp->dn_ctfp, dnp->dn_type, buf, len));
}
