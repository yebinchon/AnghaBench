
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int reconciliation; } ;


 int FEAT_UNKNOWN ;
 int dccp_feat_index (int ) ;
 TYPE_1__* dccp_feat_table ;

__attribute__((used)) static u8 dccp_feat_type(u8 feat_num)
{
 int idx = dccp_feat_index(feat_num);

 if (idx < 0)
  return FEAT_UNKNOWN;
 return dccp_feat_table[idx].reconciliation;
}
