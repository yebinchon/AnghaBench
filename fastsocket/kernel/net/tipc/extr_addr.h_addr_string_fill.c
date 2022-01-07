
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int snprintf (char*,int,char*,int,int,int) ;
 int tipc_cluster (int ) ;
 int tipc_node (int ) ;
 int tipc_zone (int ) ;

__attribute__((used)) static inline char *addr_string_fill(char *string, u32 addr)
{
 snprintf(string, 16, "<%u.%u.%u>",
   tipc_zone(addr), tipc_cluster(addr), tipc_node(addr));
 return string;
}
