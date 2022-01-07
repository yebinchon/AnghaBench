
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_state_record {unsigned char return_link_reg; } ;



__attribute__((used)) static inline void
desc_rp_br (unsigned char dst, struct unw_state_record *sr)
{
  sr->return_link_reg = dst;
}
