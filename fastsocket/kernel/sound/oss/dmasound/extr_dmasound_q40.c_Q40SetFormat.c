
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int format; int size; } ;
struct TYPE_4__ {int format; int size; } ;
struct TYPE_6__ {scalar_t__ minDev; TYPE_2__ dsp; TYPE_1__ soft; } ;







 int Q40Init () ;
 scalar_t__ SND_DEV_DSP ;
 TYPE_3__ dmasound ;

__attribute__((used)) static int Q40SetFormat(int format)
{


 switch (format) {
 case 130:
  return(dmasound.soft.format);
 case 131:
 case 132:
 case 129:
 case 128:
  break;
 default:
  format = 129;
 }

 dmasound.soft.format = format;
 dmasound.soft.size = 8;
 if (dmasound.minDev == SND_DEV_DSP) {
  dmasound.dsp.format = format;
  dmasound.dsp.size = 8;
 }
 Q40Init();

 return(format);
}
