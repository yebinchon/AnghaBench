
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DCCPF_ACK_RATIO ;
 scalar_t__ DCCPF_SEQUENCE_WINDOW ;

__attribute__((used)) static u8 dccp_feat_valid_nn_length(u8 feat_num)
{
 if (feat_num == DCCPF_ACK_RATIO)
  return 2;
 if (feat_num == DCCPF_SEQUENCE_WINDOW)
  return 6;
 return 0;
}
