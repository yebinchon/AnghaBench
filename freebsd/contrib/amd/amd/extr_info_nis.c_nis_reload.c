
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ypall_callback_fxn_t ;
typedef scalar_t__ voidp ;
struct ypall_callback {scalar_t__ foreach; scalar_t__ data; } ;
struct nis_callback_data {char* ncd_map; void (* ncd_fn ) (int *,char*,char*) ;int * ncd_m; } ;
typedef int mnt_map ;
struct TYPE_2__ {int nis_domain; } ;


 int XLOG_ERROR ;
 int XLOG_INFO ;
 scalar_t__ callback ;
 int determine_nis_domain () ;
 TYPE_1__ gopt ;
 int plog (int ,char*,char*,...) ;
 int yp_all (int ,char*,struct ypall_callback*) ;
 int yperr_string (int ) ;
 int ypprot_err (int) ;

int
nis_reload(mnt_map *m, char *map, void (*fn) (mnt_map *, char *, char *))
{
  int error;
  struct nis_callback_data data;
  struct ypall_callback cbinfo;

  if (!gopt.nis_domain) {
    error = determine_nis_domain();
    if (error)
      return error;
  }
  data.ncd_m = m;
  data.ncd_map = map;
  data.ncd_fn = fn;
  cbinfo.data = (voidp) &data;
  cbinfo.foreach = (ypall_callback_fxn_t) callback;

  plog(XLOG_INFO, "NIS map %s reloading using yp_all", map);







  error = yp_all(gopt.nis_domain, map, &cbinfo);

  if (error)
    plog(XLOG_ERROR, "error grabbing nis map of %s: %s", map, yperr_string(ypprot_err(error)));
  return error;
}
