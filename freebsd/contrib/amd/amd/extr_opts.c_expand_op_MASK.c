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
typedef  int /*<<< orphan*/  xbuf ;
struct opt {int nlen; char** sel_p; char** optp; scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  D_STR ; 
 char* EXPAND_ERROR ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int NLEN ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_USER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct opt* opt_fields ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*,char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC14(char *opt, int sel_p)
{
#define EXPAND_ERROR "No space to expand \"%s\""
  char expbuf[MAXPATHLEN + 1];
  char nbuf[NLEN + 1];
  char *ep = expbuf;
  char *cp = opt;
  char *dp;
  struct opt *op;
  char *cp_orig = opt;

  while ((dp = FUNC7(cp, '$'))) {
    char ch;
    /*
     * First copy up to the $
     */
    {
      int len = dp - cp;

      if (len > 0) {
	if (FUNC0(ep, len)) {
	  /*
	   * We use strncpy (not xstrlcpy) because 'ep' relies on its
	   * semantics.  BUFSPACE guarantees that ep can hold len.
	   */
	  FUNC9(ep, cp, len);
	  ep += len;
	} else {
	  FUNC6(XLOG_ERROR, EXPAND_ERROR, opt);
	  goto out;
	}
      }
    }

    cp = dp + 1;
    ch = *cp++;
    if (ch == '$') {
      if (FUNC0(ep, 1)) {
	*ep++ = '$';
      } else {
	FUNC6(XLOG_ERROR, EXPAND_ERROR, opt);
	goto out;
      }
    } else if (ch == '{') {
      /* Expansion... */
      enum {
	E_All, E_Dir, E_File, E_Domain, E_Host
      } todo;
      /*
       * Find closing brace
       */
      char *br_p = FUNC7(cp, '}');
      int len;

      /*
       * Check we found it
       */
      if (!br_p) {
	/*
	 * Just give up
	 */
	FUNC6(XLOG_USER, "No closing '}' in \"%s\"", opt);
	goto out;
      }
      len = br_p - cp;

      /*
       * Figure out which part of the variable to grab.
       */
      if (*cp == '/') {
	/*
	 * Just take the last component
	 */
	todo = E_File;
	cp++;
	--len;
      } else if (*(br_p-1) == '/') {
	/*
	 * Take all but the last component
	 */
	todo = E_Dir;
	--len;
      } else if (*cp == '.') {
	/*
	 * Take domain name
	 */
	todo = E_Domain;
	cp++;
	--len;
      } else if (*(br_p-1) == '.') {
	/*
	 * Take host name
	 */
	todo = E_Host;
	--len;
      } else {
	/*
	 * Take the whole lot
	 */
	todo = E_All;
      }

      /*
       * Truncate if too long.  Since it won't
       * match anyway it doesn't matter that
       * it has been cut short.
       */
      if (len > NLEN)
	len = NLEN;

      /*
       * Put the string into another buffer so
       * we can do comparisons.
       *
       * We use strncpy here (not xstrlcpy) because the dest is meant
       * to be truncated and we don't want to log it as an error.  The
       * use of the BUFSPACE macro above guarantees the safe use of
       * strncpy with nbuf.
       */
      FUNC9(nbuf, cp, len);
      nbuf[len] = '\0';

      /*
       * Advance cp
       */
      cp = br_p + 1;

      /*
       * Search the option array
       */
      for (op = opt_fields; op->name; op++) {
	/*
	 * Check for match
	 */
	if (len == op->nlen && FUNC1(op->name, nbuf)) {
	  char xbuf[NLEN + 3];
	  char *val;
	  /*
	   * Found expansion.  Copy
	   * the correct value field.
	   */
	  if (!(!op->sel_p == !sel_p)) {
	    /*
	     * Copy the string across unexpanded
	     */
	    FUNC11(xbuf, sizeof(xbuf), "${%s%s%s}",
		      todo == E_File ? "/" :
		      todo == E_Domain ? "." : "",
		      nbuf,
		      todo == E_Dir ? "/" :
		      todo == E_Host ? "." : "");
	    val = xbuf;
	    /*
	     * Make sure expansion doesn't
	     * munge the value!
	     */
	    todo = E_All;
	  } else if (op->sel_p) {
	    val = *op->sel_p;
	  } else {
	    val = *op->optp;
	  }

	  if (val) {
	    /*
	     * Do expansion:
	     * ${/var} means take just the last part
	     * ${var/} means take all but the last part
	     * ${.var} means take all but first part
	     * ${var.} means take just the first part
	     * ${var} means take the whole lot
	     */
	    int vlen = FUNC8(val);
	    char *vptr = val;
	    switch (todo) {
	    case E_Dir:
	      vptr = FUNC10(val, '/');
	      if (vptr)
		vlen = vptr - val;
	      vptr = val;
	      break;
	    case E_File:
	      vptr = FUNC10(val, '/');
	      if (vptr) {
		vptr++;
		vlen = FUNC8(vptr);
	      } else
		vptr = val;
	      break;
	    case E_Domain:
	      vptr = FUNC7(val, '.');
	      if (vptr) {
		vptr++;
		vlen = FUNC8(vptr);
	      } else {
		vptr = "";
		vlen = 0;
	      }
	      break;
	    case E_Host:
	      vptr = FUNC7(val, '.');
	      if (vptr)
		vlen = vptr - val;
	      vptr = val;
	      break;
	    case E_All:
	      break;
	    }

	    if (FUNC0(ep, vlen+1)) {
	      /*
	       * Don't call xstrlcpy() to truncate a string here.  It causes
	       * spurious xstrlcpy() syslog() errors.  Use memcpy() and
	       * explicitly terminate the string.
	       */
	      FUNC4(ep, vptr, vlen+1);
	      ep += vlen;
	      *ep = '\0';
	    } else {
	      FUNC6(XLOG_ERROR, EXPAND_ERROR, opt);
	      goto out;
	    }
	  }
	  /*
	   * Done with this variable
	   */
	  break;
	}
      }

      /*
       * Check that the search was successful
       */
      if (!op->name) {
	/*
	 * If it wasn't then scan the
	 * environment for that name
	 * and use any value found
	 */
	char *env = FUNC3(nbuf);

	if (env) {
	  int vlen = FUNC8(env);

	  if (FUNC0(ep, vlen+1)) {
	    FUNC13(ep, env, vlen+1);
	    ep += vlen;
	  } else {
	    FUNC6(XLOG_ERROR, EXPAND_ERROR, opt);
	    goto out;
	  }
	  if (FUNC2(D_STR))
	    FUNC6(XLOG_DEBUG, "Environment gave \"%s\" -> \"%s\"", nbuf, env);
	} else {
	  FUNC6(XLOG_USER, "Unknown sequence \"${%s}\"", nbuf);
	}
      }
    } else {
      /*
       * Error, error
       */
      FUNC6(XLOG_USER, "Unknown $ sequence in \"%s\"", opt);
    }
  }

out:
  /*
   * Handle common case - no expansion
   */
  if (cp == opt) {
    opt = FUNC12(cp);
  } else {
    /*
     * Finish off the expansion
     */
    int vlen = FUNC8(cp);
    if (FUNC0(ep, vlen+1)) {
      FUNC13(ep, cp, vlen+1);
      /* ep += vlen; */
    } else {
      FUNC6(XLOG_ERROR, EXPAND_ERROR, opt);
    }

    /*
     * Save the expansion
     */
    opt = FUNC12(expbuf);
  }

  FUNC5(opt);

  if (FUNC2(D_STR)) {
    FUNC6(XLOG_DEBUG, "Expansion of \"%s\"...", cp_orig);
    FUNC6(XLOG_DEBUG, "......... is \"%s\"", opt);
  }
  return opt;
}