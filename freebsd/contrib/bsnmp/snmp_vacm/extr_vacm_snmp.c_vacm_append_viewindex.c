
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint ;
struct TYPE_2__ {int len; } ;
struct vacm_view {int* viewname; TYPE_1__ subtree; } ;
struct asn_oid {size_t len; int* subs; } ;


 int asn_append_oid (struct asn_oid*,TYPE_1__*) ;
 int strlen (int*) ;

__attribute__((used)) static void
vacm_append_viewindex(struct asn_oid *oid, uint sub, const struct vacm_view *view)
{
 uint32_t i;

 oid->len = sub + strlen(view->viewname) + 1;
 oid->subs[sub] = strlen(view->viewname);
 for (i = 1; i <= strlen(view->viewname); i++)
  oid->subs[sub + i] = view->viewname[i - 1];

 sub += strlen(view->viewname) + 1;
 oid->subs[sub] = view->subtree.len;
 oid->len++;
 asn_append_oid(oid, &view->subtree);
}
