
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_neighbor_e {int dummy; } ;
struct wlp {int dummy; } ;


 int wlp_d1d2_exchange (struct wlp*,struct wlp_neighbor_e*,int *,int *) ;

__attribute__((used)) static
int wlp_discover_neighbor(struct wlp *wlp,
     struct wlp_neighbor_e *neighbor)
{
 return wlp_d1d2_exchange(wlp, neighbor, ((void*)0), ((void*)0));
}
