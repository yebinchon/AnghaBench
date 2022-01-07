
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ busy; } ;


 int SND_DEV_STATUS ;
 int register_sound_special (int *,int ) ;
 TYPE_1__ state ;
 int state_fops ;

__attribute__((used)) static int state_init(void)
{

 int state_unit;

 state_unit = register_sound_special(&state_fops, SND_DEV_STATUS);
 if (state_unit < 0)
  return state_unit ;
 state.busy = 0;
 return 0 ;
}
