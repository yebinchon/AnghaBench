
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* part1; scalar_t__ live_cond; int validated; } ;


 void* SWITCH_FALSE ;
 scalar_t__ SWITCH_LIVE ;
 int n_switches ;
 int strcmp (char const*,char const*) ;
 int strncmp (char const*,char*,int) ;
 TYPE_1__* switches ;

__attribute__((used)) static int
check_live_switch (int switchnum, int prefix_length)
{
  const char *name = switches[switchnum].part1;
  int i;




  if (prefix_length >= 0 && prefix_length <= 1)
    return 1;



  if (switches[switchnum].live_cond != 0)
    return switches[switchnum].live_cond > 0;


  switch (*name)
    {
    case 'O':
      for (i = switchnum + 1; i < n_switches; i++)
 if (switches[i].part1[0] == 'O')
   {
     switches[switchnum].validated = 1;
     switches[switchnum].live_cond = SWITCH_FALSE;
     return 0;
   }
      break;

    case 'W': case 'f': case 'm':
      if (! strncmp (name + 1, "no-", 3))
 {

   for (i = switchnum + 1; i < n_switches; i++)
     if (switches[i].part1[0] == name[0]
  && ! strcmp (&switches[i].part1[1], &name[4]))
       {
  switches[switchnum].validated = 1;
  switches[switchnum].live_cond = SWITCH_FALSE;
  return 0;
       }
 }
      else
 {

   for (i = switchnum + 1; i < n_switches; i++)
     if (switches[i].part1[0] == name[0]
  && switches[i].part1[1] == 'n'
  && switches[i].part1[2] == 'o'
  && switches[i].part1[3] == '-'
  && !strcmp (&switches[i].part1[4], &name[1]))
       {
  switches[switchnum].validated = 1;
  switches[switchnum].live_cond = SWITCH_FALSE;
  return 0;
       }
 }
      break;
    }


  switches[switchnum].live_cond = SWITCH_LIVE;
  return 1;
}
