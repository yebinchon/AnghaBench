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
typedef  scalar_t__ rc_uint_type ;

/* Variables and functions */
 scalar_t__ CP_UTF16 ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* initial_fn ; 
 scalar_t__ FUNC4 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 char* rc_filename ; 
 int rc_lineno ; 
 char* rclex_tok ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 void* FUNC7 (char const*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int FUNC12 (char const*,char**,int) ; 
 int suppress_cpp_data ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ wind_current_codepage ; 
 scalar_t__ wind_default_codepage ; 
 char* FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15 (void)
{
  const char *s = rclex_tok;
  int line;
  char *send, *fn;
  size_t len, mlen;

  ++s;
  while (FUNC0 (*s))
    ++s;
  
  /* Check for #pragma code_page ( DEFAULT | <nr>).  */
  len = FUNC10 (s);
  mlen = FUNC10 ("pragma");
  if (len > mlen && FUNC4 (s, "pragma", mlen) == 0 && FUNC0 (s[mlen]))
    {
      const char *end;

      s += mlen + 1;
      while (FUNC0 (*s))
	++s;
      len = FUNC10 (s);
      mlen = FUNC10 ("code_page");
      if (len <= mlen || FUNC4 (s, "code_page", mlen) != 0)
	/* FIXME: We ought to issue a warning message about an unrecognised pragma.  */
	return;
      s += mlen;
      while (FUNC0 (*s))
	++s;
      if (*s != '(')
	/* FIXME: We ought to issue an error message about a malformed pragma.  */
	return;
      ++s;
      while (FUNC0 (*s))
	++s;
      if (*s == 0 || (end = FUNC7 (s, ')')) == NULL)
	/* FIXME: We ought to issue an error message about a malformed pragma.  */
	return;
      len = (size_t) (end - s);
      fn = FUNC14 (len + 1);
      if (len)
      	FUNC5 (fn, s, len);
      fn[len] = 0;
      while (len > 0 && (fn[len - 1] > 0 && fn[len - 1] <= 0x20))
	fn[--len] = 0;
      if (! len || (len == FUNC10 ("DEFAULT") && FUNC6 (fn, "DEFAULT") == 0))
	wind_current_codepage = wind_default_codepage;
      else if (len > 0)
	{
	  rc_uint_type ncp;

	  if (fn[0] == '0' && (fn[1] == 'x' || fn[1] == 'X'))
	      ncp = (rc_uint_type) FUNC12 (fn + 2, NULL, 16);
	  else
	      ncp = (rc_uint_type) FUNC12 (fn, NULL, 10);
	  if (ncp == CP_UTF16 || ! FUNC13 (ncp))
	    FUNC2 (FUNC1("invalid value specified for pragma code_page.\n"));
	  wind_current_codepage = ncp;
	}
      FUNC3 (fn);
      return;
    }

  line = FUNC12 (s, &send, 0);
  if (*send != '\0' && ! FUNC0 (*send))
    return;

  /* Subtract 1 because we are about to count the newline.  */
  rc_lineno = line - 1;

  s = send;
  while (FUNC0 (*s))
    ++s;

  if (*s != '"')
    return;

  ++s;
  send = FUNC7 (s, '"');
  if (send == NULL)
    return;

  fn = FUNC14 (send - s + 1);
  FUNC11 (fn, s, send - s);
  fn[send - s] = '\0';

  FUNC3 (rc_filename);
  rc_filename = fn;

  if (! initial_fn)
    {
      initial_fn = FUNC14 (FUNC10 (fn) + 1);
      FUNC9 (initial_fn, fn);
    }

  /* Allow the initial file, regardless of name.  Suppress all other
     files if they end in ".h" (this allows included "*.rc").  */
  if (FUNC8 (initial_fn, fn) == 0
      || FUNC8 (fn + FUNC10 (fn) - 2, ".h") != 0)
    suppress_cpp_data = 0;
  else
    suppress_cpp_data = 1;
}