#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  time_t ;
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  rhost ;
typedef  int /*<<< orphan*/  mnt_map ;

/* Variables and functions */
 int ENOENT ; 
 int MAXHOSTNAMELEN ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 struct passwd* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

int
FUNC9(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  char *dir = NULL;
  struct passwd *pw;

  if (FUNC0(key, "/defaults")) {
    *pval = FUNC7("type:=nfs");
    return 0;
  }
  pw = FUNC3(key);

  if (pw) {
    /*
     * We chop the home directory up as follows:
     * /anydir/dom1/dom2/dom3/user
     *
     * and return
     * rfs:=/anydir/dom3;rhost:=dom3.dom2.dom1;sublink:=user
     * and now have
     * var0:=pw-prefix:=anydir
     * var1:=pw-rhost:=dom3.dom2.dom1
     * var2:=pw-user:=user
     * var3:=pw-home:=/anydir/dom1/dom2/dom3/user
     *
     * This allows cross-domain entries in your passwd file.
     * ... but forget about security!
     */
    char *user;
    char *p, *q;
    char val[MAXPATHLEN];
    char rhost[MAXHOSTNAMELEN];
    dir = FUNC7(pw->pw_dir);

    /*
     * Find user name.  If no / then Invalid...
     */
    user = FUNC5(dir, '/');
    if (!user)
      goto enoent;
    *user++ = '\0';

    /*
     * Find start of host "path".  If no / then Invalid...
     */
    p = FUNC4(dir + 1, '/');
    if (!p)
      goto enoent;
    *p++ = '\0';

    /*
     * At this point, p is dom1/dom2/dom3
     * Copy, backwards, into rhost replacing
     * / with .
     */
    rhost[0] = '\0';
    do {
      q = FUNC5(p, '/');
      if (q) {
	FUNC8(rhost, q + 1, sizeof(rhost));
	FUNC8(rhost, ".", sizeof(rhost));
	*q = '\0';
      } else {
	FUNC8(rhost, p, sizeof(rhost));
      }
    } while (q);

    /*
     * Sanity check
     */
    if (*rhost == '\0' || *user == '\0' || *dir == '\0')
      goto enoent;

    /*
     * Make up return string
     */
    q = FUNC4(rhost, '.');
    if (q)
      *q = '\0';
    p = FUNC4(map, ':');
    if (p)
      p++;
    else
      p = "type:=nfs;rfs:=/${var0}/${var1};rhost:=${var1};sublink:=${var2};fs:=${autodir}${var3}";
    FUNC6(val, sizeof(val), "var0:=%s;var1:=%s;var2:=%s;var3:=%s;%s",
	      dir+1, rhost, user, pw->pw_dir, p);
    FUNC2("passwd_search: map=%s key=%s -> %s", map, key, val);
    if (q)
      *q = '.';
    *pval = FUNC7(val);
    return 0;
  }

enoent:
  FUNC1(dir);

  return ENOENT;
}