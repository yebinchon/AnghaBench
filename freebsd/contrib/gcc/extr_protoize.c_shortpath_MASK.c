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
 int /*<<< orphan*/  DIR_SEPARATOR ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char,char) ; 
 char* FUNC2 (char const*,char const*) ; 
 char* cwd_buffer ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (size_t) ; 

__attribute__((used)) static const char *
FUNC5 (const char *cwd, const char *filename)
{
  char *rel_buffer;
  char *rel_buf_p;
  char *cwd_p = cwd_buffer;
  char *path_p;
  int unmatched_slash_count = 0;
  size_t filename_len = FUNC3 (filename);

  path_p = FUNC2 (cwd, filename);
  rel_buf_p = rel_buffer = FUNC4 (filename_len);

  while (*cwd_p && FUNC1 (*cwd_p, *path_p))
    {
      cwd_p++;
      path_p++;
    }
  if (!*cwd_p && (!*path_p || FUNC0 (*path_p)))
    {
      /* whole pwd matched */
      if (!*path_p)        	/* input *is* the current path! */
	return ".";
      else
	return ++path_p;
    }
  else
    {
      if (*path_p)
	{
	  --cwd_p;
	  --path_p;
	  while (! FUNC0 (*cwd_p))     /* backup to last slash */
	    {
	      --cwd_p;
	      --path_p;
	    }
	  cwd_p++;
	  path_p++;
	  unmatched_slash_count++;
	}

      /* Find out how many directory levels in cwd were *not* matched.  */
      while (*cwd_p++)
	if (FUNC0 (*(cwd_p-1)))
	  unmatched_slash_count++;

      /* Now we know how long the "short name" will be.
	 Reject it if longer than the input.  */
      if (unmatched_slash_count * 3 + FUNC3 (path_p) >= filename_len)
	return filename;

      /* For each of them, put a `../' at the beginning of the short name.  */
      while (unmatched_slash_count--)
	{
	  /* Give up if the result gets to be longer
	     than the absolute path name.  */
	  if (rel_buffer + filename_len <= rel_buf_p + 3)
	    return filename;
	  *rel_buf_p++ = '.';
	  *rel_buf_p++ = '.';
	  *rel_buf_p++ = DIR_SEPARATOR;
	}

      /* Then tack on the unmatched part of the desired file's name.  */
      do
	{
	  if (rel_buffer + filename_len <= rel_buf_p)
	    return filename;
	}
      while ((*rel_buf_p++ = *path_p++));

      --rel_buf_p;
      if (FUNC0 (*(rel_buf_p-1)))
	*--rel_buf_p = '\0';
      return rel_buffer;
    }
}