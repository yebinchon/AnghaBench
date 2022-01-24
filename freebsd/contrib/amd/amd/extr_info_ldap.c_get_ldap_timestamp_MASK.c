#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  filter ;
struct TYPE_6__ {int /*<<< orphan*/  ldap_base; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ldap; } ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  TYPE_1__ ALD ;

/* Variables and functions */
 int AMD_LDAP_RETRIES ; 
 int /*<<< orphan*/  AMD_LDAP_TSATTR ; 
 int /*<<< orphan*/  AMD_LDAP_TSFILTER ; 
 int ENOENT ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 int LDAP_SUCCESS ; 
 int LDAP_TIMEOUT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  XLOG_USER ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__ gopt ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char**) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC14(ALD *a, char *map, time_t *ts)
{
  struct timeval tv;
  char **vals, *end;
  char filter[MAXPATHLEN];
  int i, err = 0, nentries = 0;
  LDAPMessage *res = NULL, *entry;

  FUNC2("-> get_ldap_timestamp: map <%s>\n", map);

  tv.tv_sec = 3;
  tv.tv_usec = 0;
  FUNC13(filter, sizeof(filter), AMD_LDAP_TSFILTER, map);
  FUNC2("Getting timestamp for map %s\n", map);
  FUNC2("Filter is: %s\n", filter);
  FUNC2("Base is: %s\n", gopt.ldap_base);
  for (i = 0; i < AMD_LDAP_RETRIES; i++) {
    err = FUNC9(a->ldap,
			 gopt.ldap_base,
			 LDAP_SCOPE_SUBTREE,
			 filter,
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
    FUNC11(XLOG_USER, "Timestamp LDAP search attempt %d failed: %s\n",
	 i + 1, FUNC5(err));
    if (err != LDAP_TIMEOUT) {
      FUNC2("get_ldap_timestamp: unbinding...\n");
      FUNC1(a->ldap);
      a->ldap = NULL;
      if (FUNC0(a))
        return (ENOENT);
    }
    FUNC2("Timestamp search failed, trying again...\n");
  }

  if (err != LDAP_SUCCESS) {
    *ts = 0;
    FUNC11(XLOG_USER, "LDAP timestamp search failed: %s\n",
	 FUNC5(err));
    if (res)
      FUNC8(res);
    return (ENOENT);
  }

  nentries = FUNC3(a->ldap, res);
  if (nentries == 0) {
    FUNC11(XLOG_USER, "No timestamp entry for map %s\n", map);
    *ts = 0;
    FUNC8(res);
    return (ENOENT);
  }

  entry = FUNC6(a->ldap, res);
  vals = FUNC7(a->ldap, entry, AMD_LDAP_TSATTR);
  if (FUNC4(vals) == 0) {
    FUNC11(XLOG_USER, "Missing timestamp value for map %s\n", map);
    *ts = 0;
    FUNC10(vals);
    FUNC8(res);
    return (ENOENT);
  }
  FUNC2("TS value is:%s:\n", vals[0]);

  if (vals[0]) {
    *ts = (time_t) FUNC12(vals[0], &end, 10);
    if (end == vals[0]) {
      FUNC11(XLOG_USER, "Unable to decode ldap timestamp %s for map %s\n",
	   vals[0], map);
      err = ENOENT;
    }
    if (!(*ts > 0)) {
      FUNC11(XLOG_USER, "Nonpositive timestamp %ld for map %s\n",
	   (u_long) *ts, map);
      err = ENOENT;
    }
  } else {
    FUNC11(XLOG_USER, "Empty timestamp value for map %s\n", map);
    *ts = 0;
    err = ENOENT;
  }

  FUNC10(vals);
  FUNC8(res);
  FUNC2("The timestamp for %s is %ld (err=%d)\n", map, (u_long) *ts, err);
  return (err);
}