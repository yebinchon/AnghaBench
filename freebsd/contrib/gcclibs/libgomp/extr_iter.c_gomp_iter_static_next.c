
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gomp_work_share {long next; long end; scalar_t__ chunk_size; int incr; } ;
struct TYPE_2__ {int static_trip; unsigned long team_id; struct gomp_work_share* work_share; struct gomp_team* team; } ;
struct gomp_thread {TYPE_1__ ts; } ;
struct gomp_team {int nthreads; } ;


 struct gomp_thread* gomp_thread () ;

int
gomp_iter_static_next (long *pstart, long *pend)
{
  struct gomp_thread *thr = gomp_thread ();
  struct gomp_team *team = thr->ts.team;
  struct gomp_work_share *ws = thr->ts.work_share;
  unsigned long nthreads = team ? team->nthreads : 1;

  if (thr->ts.static_trip == -1)
    return -1;


  if (nthreads == 1)
    {
      *pstart = ws->next;
      *pend = ws->end;
      thr->ts.static_trip = -1;
      return ws->next == ws->end;
    }




  if (ws->chunk_size == 0)
    {
      unsigned long n, q, i;
      unsigned long s0, e0;
      long s, e;

      if (thr->ts.static_trip > 0)
 return 1;


      s = ws->incr + (ws->incr > 0 ? -1 : 1);
      n = (ws->end - ws->next + s) / ws->incr;
      i = thr->ts.team_id;



      q = n / nthreads;
      q += (q * nthreads != n);
      s0 = q * i;
      e0 = s0 + q;
      if (e0 > n)
        e0 = n;


      if (s0 >= e0)
 {
   thr->ts.static_trip = 1;
   return 1;
 }


      s = (long)s0 * ws->incr + ws->next;
      e = (long)e0 * ws->incr + ws->next;

      *pstart = s;
      *pend = e;
      thr->ts.static_trip = (e0 == n ? -1 : 1);
      return 0;
    }
  else
    {
      unsigned long n, s0, e0, i, c;
      long s, e;




      s = ws->incr + (ws->incr > 0 ? -1 : 1);
      n = (ws->end - ws->next + s) / ws->incr;
      i = thr->ts.team_id;
      c = ws->chunk_size;



      s0 = (thr->ts.static_trip * nthreads + i) * c;
      e0 = s0 + c;


      if (s0 >= n)
 return 1;
      if (e0 > n)
 e0 = n;


      s = (long)s0 * ws->incr + ws->next;
      e = (long)e0 * ws->incr + ws->next;

      *pstart = s;
      *pend = e;

      if (e0 == n)
 thr->ts.static_trip = -1;
      else
 thr->ts.static_trip++;
      return 0;
    }
}
