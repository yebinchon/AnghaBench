#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* cfm; } ;
typedef  TYPE_2__ mnt_map ;
typedef  int /*<<< orphan*/  key_val ;
struct TYPE_7__ {int cfm_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CFM_SUN_MAP_SYNTAX ; 
 int ENOENT ; 
 int INFO_MAX_LINE_LEN ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 
 void FUNC9 (TYPE_2__*,char*,char*) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(mnt_map *m,
		      FILE *fp,
		      char *map,
		      char *key,
		      char **val,
		      void (*fn) (mnt_map *m, char *, char *))
{
  char key_val[INFO_MAX_LINE_LEN];
  int chuck = 0;
  int line_no = 0;

  while (FUNC3(key_val, sizeof(key_val), fp)) {
    char *kp;
    char *cp;
    char *hash;
    int len = FUNC8(key_val);
    line_no++;

    /*
     * Make sure we got the whole line
     */
    if (key_val[len - 1] != '\n') {
      FUNC6(XLOG_WARNING, "line %d in \"%s\" is too long", line_no, map);
      chuck = 1;
    } else {
      key_val[len - 1] = '\0';
    }

    /*
     * Strip comments
     */
    hash = FUNC7(key_val, '#');
    if (hash)
      *hash = '\0';

    /*
     * Find start of key
     */
    for (kp = key_val; *kp && FUNC4((unsigned char)*kp) && FUNC5((unsigned char)*kp); kp++) ;

    /*
     * Ignore blank lines
     */
    if (!*kp)
      goto again;

    /*
     * Find end of key
     */
    for (cp = kp; *cp && (!FUNC4((unsigned char)*cp) || !FUNC5((unsigned char)*cp)); cp++) ;

    /*
     * Check whether key matches
     */
    if (*cp)
      *cp++ = '\0';

    if (fn || (*key == *kp && FUNC0(key, kp))) {
      while (*cp && FUNC4((unsigned char)*cp) && FUNC5((unsigned char)*cp))
	cp++;
      if (*cp) {
	/*
	 * Return a copy of the data
	 */
	char *dc;
	/* if m->cfm == NULL, not using amd.conf file */
	if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX))
	  dc = FUNC10(kp, cp);
	else
	  dc = FUNC11(cp);
	if (fn) {
	  (*fn) (m, FUNC11(kp), dc);
	} else {
	  *val = dc;
	  FUNC1("%s returns %s", key, dc);
	}
	if (!fn)
	  return 0;
      } else {
	FUNC6(XLOG_USER, "%s: line %d has no value field", map, line_no);
      }
    }

  again:
    /*
     * If the last read didn't get a whole line then
     * throw away the remainder before continuing...
     */
    if (chuck) {
      while (FUNC2(key_val, sizeof(key_val), fp) &&
	     !FUNC7(key_val, '\n')) ;
      chuck = 0;
    }
  }

  return fn ? 0 : ENOENT;
}