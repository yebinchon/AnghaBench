
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ basic_block ;



__attribute__((used)) static bool
alp_enum_p (basic_block bb, void *alp_header)
{
  return bb != (basic_block) alp_header;
}
