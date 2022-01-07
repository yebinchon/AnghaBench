
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;





 int pr_info (char*) ;

__attribute__((used)) static void print_dfs_region(u8 dfs_region)
{
 if (!dfs_region)
  return;

 switch (dfs_region) {
 case 129:
  pr_info(" DFS Master region FCC");
  break;
 case 130:
  pr_info(" DFS Master region ETSI");
  break;
 case 128:
  pr_info(" DFS Master region JP");
  break;
 default:
  pr_info(" DFS Master region Unknown");
  break;
 }
}
