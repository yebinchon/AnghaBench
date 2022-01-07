
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_ackvec {int av_vec_len; } ;



__attribute__((used)) static inline int dccp_ackvec_pending(const struct dccp_ackvec *av)
{
 return av->av_vec_len;
}
