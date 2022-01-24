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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char const FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 

char *
FUNC7 (bfd *abfd, const char *name, int options)
{
  char *res, *alloc;
  const char *pre, *suf;
  size_t pre_len;

  if (abfd != NULL
      && *name != '\0'
      && FUNC0 (abfd) == *name)
    ++name;

  /* This is a hack for better error reporting on XCOFF, PowerPC64-ELF
     or the MS PE format.  These formats have a number of leading '.'s
     on at least some symbols, so we remove all dots to avoid
     confusing the demangler.  */
  pre = name;
  while (*name == '.' || *name == '$')
    ++name;
  pre_len = name - pre;

  /* Strip off @plt and suchlike too.  */
  alloc = NULL;
  suf = FUNC5 (name, '@');
  if (suf != NULL)
    {
      alloc = FUNC1 (suf - name + 1);
      if (alloc == NULL)
	return NULL;
      FUNC4 (alloc, name, suf - name);
      alloc[suf - name] = '\0';
      name = alloc;
    }

  res = FUNC2 (name, options);

  if (alloc != NULL)
    FUNC3 (alloc);

  if (res == NULL)
    return NULL;

  /* Put back any prefix or suffix.  */
  if (pre_len != 0 || suf != NULL)
    {
      size_t len;
      size_t suf_len;
      char *final;

      len = FUNC6 (res);
      if (suf == NULL)
	suf = res + len;
      suf_len = FUNC6 (suf) + 1;
      final = FUNC1 (pre_len + len + suf_len);
      if (final != NULL)
	{
	  FUNC4 (final, pre, pre_len);
	  FUNC4 (final + pre_len, res, len);
	  FUNC4 (final + pre_len + len, suf, suf_len);
	}
      FUNC3 (res);
      res = final;
    }

  return res;
}