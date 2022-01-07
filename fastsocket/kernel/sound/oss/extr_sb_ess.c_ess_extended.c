
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int sb_dsp_command (int *,int) ;

__attribute__((used)) static void ess_extended (sb_devc * devc)
{


 sb_dsp_command(devc, 0xc6);
}
