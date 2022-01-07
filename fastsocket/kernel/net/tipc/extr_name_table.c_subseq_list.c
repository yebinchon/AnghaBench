
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sub_seq {struct publication* zone_list; int upper; int lower; } ;
struct publication {scalar_t__ node; int ref; scalar_t__ scope; struct publication* zone_list_next; int key; } ;
struct print_buf {int dummy; } ;


 scalar_t__ TIPC_CLUSTER_SCOPE ;
 scalar_t__ TIPC_NODE_SCOPE ;
 int sprintf (char*,char*,int,int,int,int) ;
 int tipc_cluster (scalar_t__) ;
 int tipc_node (scalar_t__) ;
 scalar_t__ tipc_own_addr ;
 int tipc_printf (struct print_buf*,char*,...) ;
 int tipc_zone (scalar_t__) ;

__attribute__((used)) static void subseq_list(struct sub_seq *sseq, struct print_buf *buf, u32 depth,
   u32 index)
{
 char portIdStr[27];
 char *scopeStr;
 struct publication *publ = sseq->zone_list;

 tipc_printf(buf, "%-10u %-10u ", sseq->lower, sseq->upper);

 if (depth == 2 || !publ) {
  tipc_printf(buf, "\n");
  return;
 }

 do {
  sprintf (portIdStr, "<%u.%u.%u:%u>",
    tipc_zone(publ->node), tipc_cluster(publ->node),
    tipc_node(publ->node), publ->ref);
  tipc_printf(buf, "%-26s ", portIdStr);
  if (depth > 3) {
   if (publ->node != tipc_own_addr)
    scopeStr = "";
   else if (publ->scope == TIPC_NODE_SCOPE)
    scopeStr = "node";
   else if (publ->scope == TIPC_CLUSTER_SCOPE)
    scopeStr = "cluster";
   else
    scopeStr = "zone";
   tipc_printf(buf, "%-10u %s", publ->key, scopeStr);
  }

  publ = publ->zone_list_next;
  if (publ == sseq->zone_list)
   break;

  tipc_printf(buf, "\n%33s", " ");
 } while (1);

 tipc_printf(buf, "\n");
}
