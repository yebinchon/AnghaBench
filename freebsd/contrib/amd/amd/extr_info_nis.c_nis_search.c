
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_7__ {TYPE_1__* cfm; } ;
typedef TYPE_2__ mnt_map ;
typedef int YP_ORDER_OUTORDER_TYPE ;
struct TYPE_8__ {int nis_domain; scalar_t__ am_timeo; } ;
struct TYPE_6__ {int cfm_flags; } ;


 int CFM_SUN_MAP_SYNTAX ;
 int EIO ;
 int ENOENT ;
 int XFREE (char*) ;
 int XLOG_ERROR ;

 int determine_nis_domain () ;
 TYPE_5__ gopt ;
 int has_yp_order ;
 int nis_isup (TYPE_2__*,char*) ;
 int plog (int ,char*,char*,int ) ;
 int strlen (char*) ;
 char* sun_entry2amd (char*,char*) ;
 int time (int *) ;
 int yp_match (int ,char*,char*,int ,char**,int*) ;
 int yp_order (int ,char*,int *) ;
 int yperr_string (int) ;

int
nis_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  int outlen;
  int res;
  YP_ORDER_OUTORDER_TYPE order;




  if (!gopt.nis_domain) {
    int error = determine_nis_domain();
    if (error)
      return error;
  }


  switch (has_yp_order) {
  case 1:




    if (yp_order(gopt.nis_domain, map, &order))
      return EIO;
    if ((time_t) order > *tp) {
      *tp = (time_t) order;
      return -1;
    }
    break;

  case 0:




    order = time(((void*)0));
    if ((time_t)order - *tp > gopt.am_timeo) {
      *tp = (time_t)order;
      return(-1);
    }
    break;

  default:



     if (nis_isup(m, map))
       return -1;
     return EIO;
  }




  res = yp_match(gopt.nis_domain, map, key, strlen(key), pval, &outlen);
  if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX) && res == 0) {
    char *oldval = *pval;
    *pval = sun_entry2amd(key, oldval);

    XFREE(oldval);
    if (*pval == ((void*)0))
      return -1;
  }




  switch (res) {
  case 0:
    return 0;

  case 128:
    return ENOENT;

  default:
    plog(XLOG_ERROR, "nis_search: %s: %s", map, yperr_string(res));
    return EIO;
  }
}
