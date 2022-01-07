
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_state_record {unsigned char unwabi; } ;



__attribute__((used)) static inline void
desc_abi (unsigned char abi,
   unsigned char context,
   struct unw_state_record *sr)
{
  sr->unwabi = (abi << 8) | context;
}
