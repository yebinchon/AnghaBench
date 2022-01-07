
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int swab32 (int ) ;

__attribute__((used)) static u32 htohl(u32 in, int swap)
{
 return swap ? swab32(in) : in;
}
