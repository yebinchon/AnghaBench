
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int mnt_map ;
typedef scalar_t__ YP_ORDER_OUTORDER_TYPE ;
struct TYPE_2__ {int nis_domain; } ;


 int ENOENT ;

 int determine_nis_domain () ;
 int dlog (char*,char*,int ,...) ;
 TYPE_1__ gopt ;
 int has_yp_order ;
 int time (int *) ;
 int yp_master (int ,char*,char**) ;
 int yp_order (int ,char*,scalar_t__*) ;

int
nis_init(mnt_map *m, char *map, time_t *tp)
{
  YP_ORDER_OUTORDER_TYPE order;
  int yp_order_result;
  char *master;

  if (!gopt.nis_domain) {
    int error = determine_nis_domain();
    if (error)
      return error;
  }





  yp_order_result = yp_order(gopt.nis_domain, map, &order);
  switch (yp_order_result) {
  case 0:

    has_yp_order = 1;
    *tp = (time_t) order;
    dlog("NIS master for %s@%s has order %lu", map, gopt.nis_domain, (unsigned long) order);
    break;
  case 128:

    has_yp_order = 0;

    if (yp_master(gopt.nis_domain, map, &master)) {
      return ENOENT;
    } else {
      dlog("NIS master for %s@%s is a NIS+ server", map, gopt.nis_domain);

      *tp = time(((void*)0));
    }
    break;
  default:

    has_yp_order = -1;
    return ENOENT;
  }
  return 0;
}
