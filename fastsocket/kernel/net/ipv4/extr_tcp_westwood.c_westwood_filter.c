
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct westwood {int bw_ns_est; int bw_est; int bk; } ;


 void* westwood_do_filter (int,int) ;

__attribute__((used)) static void westwood_filter(struct westwood *w, u32 delta)
{

 if (w->bw_ns_est == 0 && w->bw_est == 0) {
  w->bw_ns_est = w->bk / delta;
  w->bw_est = w->bw_ns_est;
 } else {
  w->bw_ns_est = westwood_do_filter(w->bw_ns_est, w->bk / delta);
  w->bw_est = westwood_do_filter(w->bw_est, w->bw_ns_est);
 }
}
