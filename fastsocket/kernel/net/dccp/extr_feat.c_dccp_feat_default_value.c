
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int default_value; } ;


 int DCCP_BUG_ON (int) ;
 int dccp_feat_index (int ) ;
 TYPE_1__* dccp_feat_table ;

__attribute__((used)) static int dccp_feat_default_value(u8 feat_num)
{
 int idx = dccp_feat_index(feat_num);




 DCCP_BUG_ON(idx < 0);

 return idx < 0 ? 0 : dccp_feat_table[idx].default_value;
}
