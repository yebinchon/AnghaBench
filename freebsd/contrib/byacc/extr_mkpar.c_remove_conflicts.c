
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int symbol; int suppressed; scalar_t__ action_code; scalar_t__ prec; scalar_t__ assoc; struct TYPE_4__* next; } ;
typedef TYPE_1__ action ;


 scalar_t__ LEFT ;
 void* NEW2 (int,int ) ;
 scalar_t__ RIGHT ;
 scalar_t__* RRconflicts ;
 scalar_t__ RRcount ;
 scalar_t__ RRtotal ;
 scalar_t__ SHIFT ;
 scalar_t__* SRconflicts ;
 scalar_t__ SRcount ;
 scalar_t__ SRtotal ;
 int StartBacktrack (TYPE_1__*) ;
 int Value_t ;
 int final_state ;
 int nstates ;
 TYPE_1__** parser ;

__attribute__((used)) static void
remove_conflicts(void)
{
    int i;
    int symbol;
    action *p, *pref = 0;

    SRtotal = 0;
    RRtotal = 0;
    SRconflicts = NEW2(nstates, Value_t);
    RRconflicts = NEW2(nstates, Value_t);
    for (i = 0; i < nstates; i++)
    {
 SRcount = 0;
 RRcount = 0;
 symbol = -1;



 for (p = parser[i]; p; p = p->next)
 {
     if (p->symbol != symbol)
     {

  pref = p;
  symbol = p->symbol;
     }

     else if (i == final_state && symbol == 0)
     {
  SRcount++;
  p->suppressed = 1;
  StartBacktrack(pref);
     }
     else if (pref != 0 && pref->action_code == SHIFT)
     {
  if (pref->prec > 0 && p->prec > 0)
  {
      if (pref->prec < p->prec)
      {
   pref->suppressed = 2;
   pref = p;
      }
      else if (pref->prec > p->prec)
      {
   p->suppressed = 2;
      }
      else if (pref->assoc == LEFT)
      {
   pref->suppressed = 2;
   pref = p;
      }
      else if (pref->assoc == RIGHT)
      {
   p->suppressed = 2;
      }
      else
      {
   pref->suppressed = 2;
   p->suppressed = 2;
      }
  }
  else
  {
      SRcount++;
      p->suppressed = 1;
      StartBacktrack(pref);
  }
     }
     else
     {
  RRcount++;
  p->suppressed = 1;
  StartBacktrack(pref);
     }
 }
 SRtotal += SRcount;
 RRtotal += RRcount;
 SRconflicts[i] = SRcount;
 RRconflicts[i] = RRcount;
    }
}
