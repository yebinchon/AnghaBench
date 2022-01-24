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

/* Variables and functions */
 int /*<<< orphan*/  SUN_KEY_SUB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC4(char *dest,
	       size_t destlen,
	       const char *key,
	       const char *str)
{
  char *sub = NULL, *sub2 = NULL, *out = NULL;

  /* By default we are going to just write the original string. */
  out = (char*)str;

  /*
   * Resolve variable substitutions in two steps; 1) replace any key
   * map substitutions with the entry key 2) expand any variable
   * substitutions i.e $HOST.
   *
   * Try to replace the key substitution '&'. If this function returns
   * with a new string, one or more key subs. where replaced with the
   * entry key.
   */
  if ((sub = FUNC2(str, SUN_KEY_SUB, "${key}")) != NULL) {
    out = sub;
    /*
     * Try to convert any variable substitutions. If this function
     * returns a new string one or more var subs where expanded.
     */
    if ((sub2 = FUNC1(sub)) != NULL) {
      out = sub2;
    }
  }
  /*
   * Try to convert any variable substitutions. If this function
   * returns a new string one or more var subs where expanded.
   */
  else if (out != NULL && (sub = FUNC1(out)) != NULL) {
    out = sub;
  }

  if (out != NULL) {
    FUNC3(dest, out, destlen);
  }
  FUNC0(sub);
  FUNC0(sub2);
}