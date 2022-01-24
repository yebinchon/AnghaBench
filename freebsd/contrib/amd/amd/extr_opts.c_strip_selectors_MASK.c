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
typedef  enum vs_opt { ____Placeholder_vs_opt } vs_opt ;

/* Variables and functions */
#define  SelEQ 130 
#define  SelNE 129 
#define  VarAss 128 
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC3 (char*,char) ; 

char *
FUNC4(char *opts, char *mapkey)
{
  /*
   * Fill in the global structure fs_static by
   * cracking the string opts.  opts may be
   * scribbled on at will.
   */
  char *o = opts;
  char *oo = opts;
  char *f;

  /*
   * Scan options.  Note that the opt() function scribbles on the opt string.
   */
  while (*(f = FUNC1(&o))) {
    enum vs_opt vs_opt = VarAss;
    char *eq = FUNC3(f, '=');

    if (!eq || eq[1] == '\0' || eq == f) {
      /*
       * No option or assignment?  Return as is.
       */
      FUNC2(XLOG_USER, "key %s: No option or assignment in \"%s\"", mapkey, f);
      return o;
    }
    /*
     * Check what type of operation is happening
     * !=, =!  is SelNE
     * == is SelEQ
     * := is VarAss
     */
    if (*(eq-1) == '!') {	/* != */
      vs_opt = SelNE;
    } else if (*(eq-1) == ':') {	/* := */
      vs_opt = VarAss;
    } else if (eq[1] == '=') {	/* == */
      vs_opt = SelEQ;
    } else if (eq[1] == '!') {	/* =! */
      vs_opt = SelNE;
    }
    switch (vs_opt) {
    case SelEQ:
    case SelNE:
      /* Skip this selector, maybe there's another one following it */
      FUNC2(XLOG_USER, "skipping selector to \"%s\"", o);
      /* store previous match. it may have been the first assignment */
      oo = o;
      break;

    case VarAss:
      /* found the first assignment, return the string starting with it */
      FUNC0("found first assignment past selectors \"%s\"", o);
      return oo;
    }
  }

  /* return the same string by default. should not happen. */
  return oo;
}