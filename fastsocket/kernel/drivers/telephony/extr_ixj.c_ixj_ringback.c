
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ringback; scalar_t__ dialtone; scalar_t__ busytone; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;
typedef TYPE_2__ IXJ ;


 int ixj_play_tone (TYPE_2__*,int) ;
 int ixj_set_tone_off (int,TYPE_2__*) ;
 int ixj_set_tone_on (int,TYPE_2__*) ;

__attribute__((used)) static void ixj_ringback(IXJ *j)
{
 j->flags.busytone = 0;
 j->flags.dialtone = 0;
 j->flags.ringback = 1;
 ixj_set_tone_on(0x0FA0, j);
 ixj_set_tone_off(0x2EE0, j);
 ixj_play_tone(j, 26);
}
