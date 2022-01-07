
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_neighbor_e {int wssid; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static
void wlp_neighbor_init(struct wlp_neighbor_e *neighbor)
{
 INIT_LIST_HEAD(&neighbor->wssid);
}
