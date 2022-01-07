
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 tfrc_ewma(const u32 avg, const u32 newval, const u8 weight)
{
 return avg ? (weight * avg + (10 - weight) * newval) / 10 : newval;
}
