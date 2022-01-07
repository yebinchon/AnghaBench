
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct dccp_ackvec {int* av_buf; } ;


 int DCCP_ACKVEC_STATE_MASK ;

__attribute__((used)) static inline u8 dccp_ackvec_state(const struct dccp_ackvec *av,
       const u32 index)
{
 return av->av_buf[index] & DCCP_ACKVEC_STATE_MASK;
}
