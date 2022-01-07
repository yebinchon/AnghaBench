
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 int REG_DBG_PRINT (char*,int) ;

bool reg_supported_dfs_region(u8 dfs_region)
{
 switch (dfs_region) {
 case 128:
 case 130:
 case 131:
 case 129:
  return 1;
 default:
  REG_DBG_PRINT("Ignoring uknown DFS master region: %d\n",
         dfs_region);
  return 0;
 }
}
