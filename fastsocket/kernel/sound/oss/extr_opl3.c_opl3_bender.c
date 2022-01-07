
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_voice; } ;


 int bend_pitch (int,int,int) ;
 TYPE_1__* devc ;

__attribute__((used)) static void opl3_bender(int dev, int voice, int value)
{
 if (voice < 0 || voice >= devc->nr_voice)
  return;

 bend_pitch(dev, voice, value - 8192);
}
