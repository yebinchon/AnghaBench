
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_audio_simtec_pdata {int (* startup ) () ;} ;


 int stub1 () ;

__attribute__((used)) static int simtec_call_startup(struct s3c24xx_audio_simtec_pdata *pd)
{



 if (pd->startup)
  pd->startup();

 return 0;
}
