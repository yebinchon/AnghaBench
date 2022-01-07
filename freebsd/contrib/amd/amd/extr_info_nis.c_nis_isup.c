
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int mnt_map ;
typedef int YP_ORDER_OUTORDER_TYPE ;
struct TYPE_2__ {int nis_domain; } ;


 int XLOG_ERROR ;
 int XLOG_INFO ;
 TYPE_1__ gopt ;
 int has_yp_order ;
 int nis_init (int *,char*,int *) ;
 int plog (int ,char*,char*,...) ;
 int yp_master (int ,char*,char**) ;
 int yp_order (int ,char*,int *) ;
 int yperr_string (int ) ;
 int ypprot_err (int) ;

int
nis_isup(mnt_map *m, char *map)
{
  YP_ORDER_OUTORDER_TYPE order;
  int error;
  char *master;
  static int last_status = 1;

  switch (has_yp_order) {
  case 1:



    error = yp_order(gopt.nis_domain, map, &order);
    if (error != 0) {
      plog(XLOG_ERROR,
    "nis_isup: error getting the order of map %s: %s",
    map, yperr_string(ypprot_err(error)));
      last_status = 0;
      return 0;
    }
    break;

  case 0:



    error = yp_master(gopt.nis_domain, map, &master);
    if (error != 0) {
      plog(XLOG_ERROR,
    "nis_isup: error getting the master of map %s: %s",
    map, yperr_string(ypprot_err(error)));
      last_status = 0;
      return 0;
    }
    break;

  default:



    last_status = 0;
  }

  if (last_status == 0) {
    time_t dummy;
    error = nis_init(m, map, &dummy);
    if (error)
      return 0;
    plog(XLOG_INFO, "nis_isup: NIS came back up for map %s", map);
    last_status = 1;
  }
  return 1;
}
