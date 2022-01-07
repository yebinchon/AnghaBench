
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ModeIndex; } ;


 TYPE_1__* CLE266Modes ;
 int NUM_TOTAL_MODETABLE ;

__attribute__((used)) static int search_mode_setting(int ModeInfoIndex)
{
 int i = 0;

 while ((i < NUM_TOTAL_MODETABLE) &&
   (ModeInfoIndex != CLE266Modes[i].ModeIndex))
  i++;
 if (i >= NUM_TOTAL_MODETABLE)
  i = 0;
 return i;

}
