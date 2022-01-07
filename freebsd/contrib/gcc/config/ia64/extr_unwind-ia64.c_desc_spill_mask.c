
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_state_record {unsigned char* imask; int region_len; } ;



__attribute__((used)) static inline unsigned char *
desc_spill_mask (unsigned char *imaskp, struct unw_state_record *sr)
{
  sr->imask = imaskp;
  return imaskp + (2*sr->region_len + 7)/8;
}
