
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int sb_dsp_command (int *,unsigned char) ;
 int sb_dsp_get_byte (int *) ;

__attribute__((used)) static int ess_read (sb_devc * devc, unsigned char reg)
{



 if (!sb_dsp_command(devc, 0xc0)) return -1;

 if (!sb_dsp_command(devc, reg )) return -1;

 return sb_dsp_get_byte(devc);
}
