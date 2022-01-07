
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FX_CUTOFF ;
 int* gs_sense ;

__attribute__((used)) static int gs_cutoff(int val)
{
 return (val - 64) * gs_sense[FX_CUTOFF] / 50;
}
