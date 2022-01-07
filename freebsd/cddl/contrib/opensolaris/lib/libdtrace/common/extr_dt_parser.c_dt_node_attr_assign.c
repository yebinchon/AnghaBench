
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s ;
typedef int dtrace_attribute_t ;
struct TYPE_6__ {int dn_attr; } ;
typedef TYPE_1__ dt_node_t ;
typedef int a ;
struct TYPE_7__ {int pcb_cflags; int pcb_amin; } ;


 int BUFSIZ ;
 int DTRACE_ATTR2STR_MAX ;
 int DTRACE_C_EATTR ;
 int D_ATTR_MIN ;
 int dnerror (TYPE_1__*,int ,char*,int ,int ) ;
 scalar_t__ dt_attr_cmp (int ,int ) ;
 int dt_node_name (TYPE_1__*,char*,int) ;
 int dtrace_attr2str (int ,char*,int) ;
 TYPE_2__* yypcb ;

void
dt_node_attr_assign(dt_node_t *dnp, dtrace_attribute_t attr)
{
 if ((yypcb->pcb_cflags & DTRACE_C_EATTR) &&
     (dt_attr_cmp(attr, yypcb->pcb_amin) < 0)) {
  char a[DTRACE_ATTR2STR_MAX];
  char s[BUFSIZ];

  dnerror(dnp, D_ATTR_MIN, "attributes for %s (%s) are less than "
      "predefined minimum\n", dt_node_name(dnp, s, sizeof (s)),
      dtrace_attr2str(attr, a, sizeof (a)));
 }

 dnp->dn_attr = attr;
}
