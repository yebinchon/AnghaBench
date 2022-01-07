
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {struct tracepoint_path* system; struct tracepoint_path* name; struct tracepoint_path* next; } ;


 int free (struct tracepoint_path*) ;

__attribute__((used)) static void
put_tracepoints_path(struct tracepoint_path *tps)
{
 while (tps) {
  struct tracepoint_path *t = tps;

  tps = tps->next;
  free(t->name);
  free(t->system);
  free(t);
 }
}
