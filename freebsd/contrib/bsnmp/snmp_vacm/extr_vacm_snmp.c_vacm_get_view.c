
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct vacm_view {int subtree; int viewname; } ;
struct asn_oid {int dummy; } ;


 int SNMP_ADM_STR32_SIZ ;
 scalar_t__ asn_compare_oid (struct asn_oid*,int *) ;
 scalar_t__ strcmp (char*,int ) ;
 struct vacm_view* vacm_first_view () ;
 struct vacm_view* vacm_next_view (struct vacm_view*) ;
 scalar_t__ vacm_view_index_decode (struct asn_oid const*,int ,char*,struct asn_oid*) ;

struct vacm_view *
vacm_get_view(const struct asn_oid *oid, uint sub)
{
 char vname[SNMP_ADM_STR32_SIZ];
 struct asn_oid subtree;
 struct vacm_view *view;

 if (vacm_view_index_decode(oid, sub, vname, &subtree) < 0)
  return (((void*)0));

 for (view = vacm_first_view(); view != ((void*)0); view = vacm_next_view(view))
  if (strcmp(vname, view->viewname) == 0 &&
      asn_compare_oid(&subtree, &view->subtree)== 0)
   return (view);

 return (((void*)0));
}
