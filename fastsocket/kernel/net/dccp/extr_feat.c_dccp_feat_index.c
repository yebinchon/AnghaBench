
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DCCPF_DATA_CHECKSUM ;
 int DCCPF_RESERVED ;

 int DCCP_FEAT_SUPPORTED_MAX ;

__attribute__((used)) static int dccp_feat_index(u8 feat_num)
{

 if (feat_num > DCCPF_RESERVED && feat_num <= DCCPF_DATA_CHECKSUM)
  return feat_num - 1;





 switch (feat_num) {
 case 128:
   return DCCP_FEAT_SUPPORTED_MAX - 1;
 }
 return -1;
}
