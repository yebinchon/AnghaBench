
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef int loff_t ;


 int NLM4_OFFSET_MAX ;

__attribute__((used)) static inline s64
loff_t_to_s64(loff_t offset)
{
 s64 res;
 if (offset > NLM4_OFFSET_MAX)
  res = NLM4_OFFSET_MAX;
 else if (offset < -NLM4_OFFSET_MAX)
  res = -NLM4_OFFSET_MAX;
 else
  res = offset;
 return res;
}
