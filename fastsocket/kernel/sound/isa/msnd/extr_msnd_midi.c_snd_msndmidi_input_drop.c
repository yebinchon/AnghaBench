
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_msndmidi {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ MIDQ; } ;


 scalar_t__ JQS_wHead ;
 scalar_t__ JQS_wTail ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void snd_msndmidi_input_drop(struct snd_msndmidi *mpu)
{
 u16 tail;

 tail = readw(mpu->dev->MIDQ + JQS_wTail);
 writew(tail, mpu->dev->MIDQ + JQS_wHead);
}
