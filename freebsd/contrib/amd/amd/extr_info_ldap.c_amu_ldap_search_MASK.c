#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {TYPE_1__* cfm; scalar_t__ map_data; } ;
typedef  TYPE_2__ mnt_map ;
typedef  int /*<<< orphan*/  filter ;
struct TYPE_10__ {int /*<<< orphan*/  ldap_base; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ldap; } ;
struct TYPE_7__ {int cfm_flags; } ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  TYPE_3__ ALD ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_LDAP_ATTR ; 
 int /*<<< orphan*/  AMD_LDAP_FILTER ; 
 int AMD_LDAP_RETRIES ; 
 int CFM_SUN_MAP_SYNTAX ; 
 int EIO ; 
 int ENOENT ; 
#define  LDAP_NO_SUCH_OBJECT 129 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
#define  LDAP_SUCCESS 128 
 int LDAP_TIMEOUT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  XLOG_USER ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_4__ gopt ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC14 (char*) ; 

int
FUNC15(mnt_map *m, char *map, char *key, char **pval, time_t *ts)
{
  char **vals, filter[MAXPATHLEN], filter2[2 * MAXPATHLEN];
  char *f1, *f2;
  struct timeval tv;
  int i, err = 0, nvals = 0, nentries = 0;
  LDAPMessage *entry, *res = NULL;
  ALD *a = (ALD *) (m->map_data);

  FUNC2("-> amu_ldap_search: map <%s>, key <%s>\n", map, key);

  tv.tv_sec = 2;
  tv.tv_usec = 0;
  if (a == NULL) {
    FUNC11(XLOG_USER, "LDAP panic: no map data\n");
    return (EIO);
  }
  if (FUNC0(a))	/* Check that's the handle is still valid */
    return (ENOENT);

  FUNC13(filter, sizeof(filter), AMD_LDAP_FILTER, map, key);
  /* "*" is special to ldap_search(); run through the filter escaping it. */
  f1 = filter; f2 = filter2;
  while (*f1) {
    if (*f1 == '*') {
      *f2++ = '\\'; *f2++ = '2'; *f2++ = 'a';
      f1++;
    } else {
      *f2++ = *f1++;
    }
  }
  *f2 = '\0';
  FUNC2("Search with filter: <%s>\n", filter2);
  for (i = 0; i < AMD_LDAP_RETRIES; i++) {
    err = FUNC9(a->ldap,
			 gopt.ldap_base,
			 LDAP_SCOPE_SUBTREE,
			 filter2,
			 0,
			 0,
			 &tv,
			 &res);
    if (err == LDAP_SUCCESS)
      break;
    if (res) {
      FUNC8(res);
      res = NULL;
    }
    FUNC11(XLOG_USER, "LDAP search attempt %d failed: %s\n",
        i + 1, FUNC5(err));
    if (err != LDAP_TIMEOUT) {
      FUNC2("amu_ldap_search: unbinding...\n");
      FUNC1(a->ldap);
      a->ldap = NULL;
      if (FUNC0(a))
        return (ENOENT);
    }
  }

  switch (err) {
  case LDAP_SUCCESS:
    break;
  case LDAP_NO_SUCH_OBJECT:
    FUNC2("No object\n");
    if (res)
      FUNC8(res);
    return (ENOENT);
  default:
    FUNC11(XLOG_USER, "LDAP search failed: %s\n",
	 FUNC5(err));
    if (res)
      FUNC8(res);
    return (EIO);
  }

  nentries = FUNC3(a->ldap, res);
  FUNC2("Search found %d entries\n", nentries);
  if (nentries == 0) {
    FUNC8(res);
    return (ENOENT);
  }
  entry = FUNC6(a->ldap, res);
  vals = FUNC7(a->ldap, entry, AMD_LDAP_ATTR);
  nvals = FUNC4(vals);
  if (nvals == 0) {
    FUNC11(XLOG_USER, "Missing value for %s in map %s\n", key, map);
    FUNC10(vals);
    FUNC8(res);
    return (EIO);
  }
  FUNC2("Map %s, %s => %s\n", map, key, vals[0]);
  if (vals[0]) {
    if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX))
      *pval = FUNC12(key, vals[0]);
    else
      *pval = FUNC14(vals[0]);
    err = 0;
  } else {
    FUNC11(XLOG_USER, "Empty value for %s in map %s\n", key, map);
    err = ENOENT;
  }
  FUNC8(res);
  FUNC10(vals);

  return (err);
}