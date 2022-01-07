
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_3__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_STRING ;
 int D_PRAGERR ;
 char* alloca (size_t) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int xyerror (int ,char*,char const*,char*) ;

__attribute__((used)) static void
dt_pragma_error(const char *prname, dt_node_t *dnp)
{
 dt_node_t *enp;
 size_t n = 0;
 char *s;

 for (enp = dnp; enp != ((void*)0); enp = enp->dn_list) {
  if (enp->dn_kind == DT_NODE_IDENT ||
      enp->dn_kind == DT_NODE_STRING)
   n += strlen(enp->dn_string) + 1;
 }

 s = alloca(n + 1);
 s[0] = '\0';

 for (enp = dnp; enp != ((void*)0); enp = enp->dn_list) {
  if (enp->dn_kind == DT_NODE_IDENT ||
      enp->dn_kind == DT_NODE_STRING) {
   (void) strcat(s, enp->dn_string);
   (void) strcat(s, " ");
  }
 }

 xyerror(D_PRAGERR, "#%s: %s\n", prname, s);
}
