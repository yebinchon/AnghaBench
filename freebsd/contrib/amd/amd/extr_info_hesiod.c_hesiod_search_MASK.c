#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_7__ {TYPE_1__* cfm; } ;
typedef  TYPE_2__ mnt_map ;
typedef  int /*<<< orphan*/  hes_key ;
struct TYPE_9__ {int /*<<< orphan*/  options; } ;
struct TYPE_8__ {int hesiod_base; } ;
struct TYPE_6__ {int cfm_flags; } ;

/* Variables and functions */
 int CFM_SUN_MAP_SYNTAX ; 
 int /*<<< orphan*/  D_INFO ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
#define  HES_ER_CONFIG 130 
#define  HES_ER_NET 129 
#define  HES_ER_NOTFOUND 128 
 int HES_PREFLEN ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  RES_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__ _res ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int errno ; 
 TYPE_4__ gopt ; 
 long FUNC3 () ; 
 char** FUNC4 (char*,int) ; 
 int /*<<< orphan*/  hesiod_context ; 
 char** FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 

int
FUNC8(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  char hes_key[MAXPATHLEN];
  char **rvec;
#ifndef HAVE_HESIOD_INIT
  int error;
#endif /* not HAVE_HESIOD_INIT */

  FUNC2("hesiod_search(m=%lx, map=%s, key=%s, pval=%lx tp=%lx)",
       (unsigned long) m, map, key, (unsigned long) pval, (unsigned long) tp);

  if (key[0] == '.')
    return ENOENT;

  FUNC7(hes_key, sizeof(hes_key), "%s.%s", key, map + HES_PREFLEN);

  /*
   * Call the resolver
   */
  FUNC2("Hesiod base is: %s\n", gopt.hesiod_base);
  FUNC2("hesiod_search: hes_resolve(%s, %s)", hes_key, gopt.hesiod_base);
  if (FUNC1(D_INFO))
    _res.options |= RES_DEBUG;

#ifdef HAVE_HESIOD_INIT
  /* new style hesiod */
  rvec = hesiod_resolve(hesiod_context, hes_key, gopt.hesiod_base);
#else /* not HAVE_HESIOD_INIT */
  rvec = FUNC4(hes_key, gopt.hesiod_base);
#endif /* not HAVE_HESIOD_INIT */

  /*
   * If a reply was forthcoming then return
   * it (and free subsequent replies)
   */
  if (rvec && *rvec) {
    if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX)) {
      *pval = FUNC6(key, *rvec);
      FUNC0(*rvec);
    } else
      *pval = *rvec;
    while (*++rvec)
      FUNC0(*rvec);
    return 0;
  }

#ifdef HAVE_HESIOD_INIT
  /* new style hesiod */
  return errno;
#else /* not HAVE_HESIOD_INIT */
  /*
   * Otherwise reflect the hesiod error into a Un*x error
   */
  FUNC2("hesiod_search: Error: %d", FUNC3());
  switch (FUNC3()) {
  case HES_ER_NOTFOUND:
    error = ENOENT;
    break;
  case HES_ER_CONFIG:
    error = EIO;
    break;
  case HES_ER_NET:
    error = ETIMEDOUT;
    break;
  default:
    error = EINVAL;
    break;
  }
  FUNC2("hesiod_search: Returning: %d", error);
  return error;
#endif /* not HAVE_HESIOD_INIT */
}