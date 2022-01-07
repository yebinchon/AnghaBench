
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 percent(u32 count, u32 total)
{
 return (count * 100 + (total / 2)) / total;
}
