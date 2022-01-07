
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nodes; int preferred_node; } ;
struct TYPE_3__ {int user_nodemask; } ;
struct mempolicy {unsigned short flags; unsigned short mode; TYPE_2__ v; TYPE_1__ w; } ;
typedef int nodemask_t ;


 int BUG () ;
 int ENOSPC ;


 unsigned short MPOL_F_LOCAL ;
 unsigned short MPOL_F_RELATIVE_NODES ;
 unsigned short MPOL_F_STATIC_NODES ;

 unsigned short MPOL_LOCAL ;
 unsigned short MPOL_MODE_FLAGS ;

 int VM_BUG_ON (int) ;
 struct mempolicy default_policy ;
 int node_set (int ,int ) ;
 int nodelist_scnprintf (char*,int,int ) ;
 int nodes_clear (int ) ;
 int nodes_empty (int ) ;
 char** policy_types ;
 int snprintf (char*,int,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int mpol_to_str(char *buffer, int maxlen, struct mempolicy *pol, int no_context)
{
 char *p = buffer;
 int l;
 nodemask_t nodes;
 unsigned short mode;
 unsigned short flags = pol ? pol->flags : 0;




 VM_BUG_ON(maxlen < strlen("interleave") + strlen("relative") + 16);

 if (!pol || pol == &default_policy)
  mode = 130;
 else
  mode = pol->mode;

 switch (mode) {
 case 130:
  nodes_clear(nodes);
  break;

 case 128:
  nodes_clear(nodes);
  if (flags & MPOL_F_LOCAL)
   mode = MPOL_LOCAL;
  else
   node_set(pol->v.preferred_node, nodes);
  break;

 case 131:

 case 129:
  if (no_context)
   nodes = pol->w.user_nodemask;
  else
   nodes = pol->v.nodes;
  break;

 default:
  BUG();
 }

 l = strlen(policy_types[mode]);
 if (buffer + maxlen < p + l + 1)
  return -ENOSPC;

 strcpy(p, policy_types[mode]);
 p += l;

 if (flags & MPOL_MODE_FLAGS) {
  if (buffer + maxlen < p + 2)
   return -ENOSPC;
  *p++ = '=';




  if (flags & MPOL_F_STATIC_NODES)
   p += snprintf(p, buffer + maxlen - p, "static");
  else if (flags & MPOL_F_RELATIVE_NODES)
   p += snprintf(p, buffer + maxlen - p, "relative");
 }

 if (!nodes_empty(nodes)) {
  if (buffer + maxlen < p + 2)
   return -ENOSPC;
  *p++ = ':';
   p += nodelist_scnprintf(p, buffer + maxlen - p, nodes);
 }
 return p - buffer;
}
