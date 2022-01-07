
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DCCPC_CCID2 ;
 int DCCPC_CCID3 ;
__attribute__((used)) static u8 dccp_feat_is_valid_sp_val(u8 feat_num, u8 val)
{
 switch (feat_num) {
 case 135:
  return val == DCCPC_CCID2 || val == DCCPC_CCID3;

 case 128:
 case 133:
 case 131:
 case 129:
 case 134:
 case 130:
  return val < 2;
 case 132:
  return val < 16;
 }
 return 0;
}
