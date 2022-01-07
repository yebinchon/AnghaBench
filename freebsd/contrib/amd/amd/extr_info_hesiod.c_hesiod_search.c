
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_7__ {TYPE_1__* cfm; } ;
typedef TYPE_2__ mnt_map ;
typedef int hes_key ;
struct TYPE_9__ {int options; } ;
struct TYPE_8__ {int hesiod_base; } ;
struct TYPE_6__ {int cfm_flags; } ;


 int CFM_SUN_MAP_SYNTAX ;
 int D_INFO ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ETIMEDOUT ;



 int HES_PREFLEN ;
 int MAXPATHLEN ;
 int RES_DEBUG ;
 int XFREE (char*) ;
 TYPE_5__ _res ;
 scalar_t__ amuDebug (int ) ;
 int dlog (char*,...) ;
 int errno ;
 TYPE_4__ gopt ;
 long hes_error () ;
 char** hes_resolve (char*,int) ;
 int hesiod_context ;
 char** hesiod_resolve (int ,char*,int) ;
 char* sun_entry2amd (char*,char*) ;
 int xsnprintf (char*,int,char*,char*,char*) ;

int
hesiod_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  char hes_key[MAXPATHLEN];
  char **rvec;

  int error;


  dlog("hesiod_search(m=%lx, map=%s, key=%s, pval=%lx tp=%lx)",
       (unsigned long) m, map, key, (unsigned long) pval, (unsigned long) tp);

  if (key[0] == '.')
    return ENOENT;

  xsnprintf(hes_key, sizeof(hes_key), "%s.%s", key, map + HES_PREFLEN);




  dlog("Hesiod base is: %s\n", gopt.hesiod_base);
  dlog("hesiod_search: hes_resolve(%s, %s)", hes_key, gopt.hesiod_base);
  if (amuDebug(D_INFO))
    _res.options |= RES_DEBUG;





  rvec = hes_resolve(hes_key, gopt.hesiod_base);






  if (rvec && *rvec) {
    if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX)) {
      *pval = sun_entry2amd(key, *rvec);
      XFREE(*rvec);
    } else
      *pval = *rvec;
    while (*++rvec)
      XFREE(*rvec);
    return 0;
  }
  dlog("hesiod_search: Error: %d", hes_error());
  switch (hes_error()) {
  case 128:
    error = ENOENT;
    break;
  case 130:
    error = EIO;
    break;
  case 129:
    error = ETIMEDOUT;
    break;
  default:
    error = EINVAL;
    break;
  }
  dlog("hesiod_search: Returning: %d", error);
  return error;

}
