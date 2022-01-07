
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int nodeid_warned(int nodeid, int num_nodes, int *warned)
{
 int i;

 for (i = 0; i < num_nodes; i++) {
  if (!warned[i]) {
   warned[i] = nodeid;
   return 0;
  }
  if (warned[i] == nodeid)
   return 1;
 }
 return 0;
}
