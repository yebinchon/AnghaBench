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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_SEPARATOR ; 
 int /*<<< orphan*/  DIR_SEPARATOR_2 ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 char const* aux_info_file_name ; 
 char const* aux_info_suffix ; 
 char const* base_source_file_name ; 
 scalar_t__ FUNC4 (int) ; 
 int current_aux_info_lineno ; 
 int errno ; 
 int /*<<< orphan*/  errors ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* invocation_filename ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  pname ; 
 scalar_t__ FUNC9 (char const*,scalar_t__) ; 
 int FUNC10 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC13 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 size_t FUNC16 (char const*) ; 
 char* FUNC17 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC18 (char const*) ; 
 int FUNC19 (char*) ; 
 char* FUNC20 (size_t) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static void
FUNC22 (const char *base_source_filename, int keep_it,
		       int is_syscalls)
{
  size_t base_len = FUNC16 (base_source_filename);
  char * aux_info_filename = FUNC3 (base_len + FUNC16 (aux_info_suffix) + 1);
  char *aux_info_base;
  char *aux_info_limit;
  char *aux_info_relocated_name;
  const char *aux_info_second_line;
  time_t aux_info_mtime;
  size_t aux_info_size;
  int must_create;

  /* Construct the aux_info filename from the base source filename.  */

  FUNC15 (aux_info_filename, base_source_filename);
  FUNC14 (aux_info_filename, aux_info_suffix);

  /* Check that the aux_info file exists and is readable.  If it does not
     exist, try to create it (once only).  */

  /* If file doesn't exist, set must_create.
     Likewise if it exists and we can read it but it is obsolete.
     Otherwise, report an error.  */
  must_create = 0;

  /* Come here with must_create set to 1 if file is out of date.  */
start_over: ;

  if (FUNC2 (aux_info_filename, R_OK) == -1)
    {
      if (errno == ENOENT)
	{
	  if (is_syscalls)
	    {
	      FUNC7 ("%s: warning: missing SYSCALLS file '%s'\n",
		      pname, aux_info_filename);
	      return;
	    }
	  must_create = 1;
	}
      else
	{
	  int errno_val = errno;
	  FUNC7 ("%s: can't read aux info file '%s': %s\n",
		  pname, FUNC12 (NULL, aux_info_filename),
		  FUNC21 (errno_val));
	  errors++;
	  return;
	}
    }
#if 0 /* There is code farther down to take care of this.  */
  else
    {
      struct stat s1, s2;
      stat (aux_info_file_name, &s1);
      stat (base_source_file_name, &s2);
      if (s2.st_mtime > s1.st_mtime)
	must_create = 1;
    }
#endif /* 0 */

  /* If we need a .X file, create it, and verify we can read it.  */
  if (must_create)
    {
      if (!FUNC6 (base_source_filename))
	{
	  errors++;
	  return;
	}
      if (FUNC2 (aux_info_filename, R_OK) == -1)
	{
	  int errno_val = errno;
	  FUNC7 ("%s: can't read aux info file '%s': %s\n",
		  pname, FUNC12 (NULL, aux_info_filename),
		  FUNC21 (errno_val));
	  errors++;
	  return;
	}
    }

  {
    struct stat stat_buf;

    /* Get some status information about this aux_info file.  */

    if (FUNC13 (aux_info_filename, &stat_buf) == -1)
      {
	int errno_val = errno;
	FUNC7 ("%s: can't get status of aux info file '%s': %s\n",
		pname, FUNC12 (NULL, aux_info_filename),
		FUNC21 (errno_val));
	errors++;
	return;
      }

    /* Check on whether or not this aux_info file is zero length.  If it is,
       then just ignore it and return.  */

    if ((aux_info_size = stat_buf.st_size) == 0)
      return;

    /* Get the date/time of last modification for this aux_info file and
       remember it.  We will have to check that any source files that it
       contains information about are at least this old or older.  */

    aux_info_mtime = stat_buf.st_mtime;

    if (!is_syscalls)
      {
	/* Compare mod time with the .c file; update .X file if obsolete.
	   The code later on can fail to check the .c file
	   if it did not directly define any functions.  */

	if (FUNC13 (base_source_filename, &stat_buf) == -1)
	  {
	    int errno_val = errno;
	    FUNC7 ("%s: can't get status of aux info file '%s': %s\n",
		    pname, FUNC12 (NULL, base_source_filename),
		    FUNC21 (errno_val));
	    errors++;
	    return;
	  }
	if (stat_buf.st_mtime > aux_info_mtime)
	  {
	    must_create = 1;
	    goto start_over;
	  }
      }
  }

  {
    int aux_info_file;
    int fd_flags;

    /* Open the aux_info file.  */

    fd_flags = O_RDONLY;
#ifdef O_BINARY
    /* Use binary mode to avoid having to deal with different EOL characters.  */
    fd_flags |= O_BINARY;
#endif
    if ((aux_info_file = FUNC8 (aux_info_filename, fd_flags, 0444 )) == -1)
      {
	int errno_val = errno;
	FUNC7 ("%s: can't open aux info file '%s' for reading: %s\n",
		pname, FUNC12 (NULL, aux_info_filename),
		FUNC21 (errno_val));
	return;
      }

    /* Allocate space to hold the aux_info file in memory.  */

    aux_info_base = FUNC20 (aux_info_size + 1);
    aux_info_limit = aux_info_base + aux_info_size;
    *aux_info_limit = '\0';

    /* Read the aux_info file into memory.  */

    if (FUNC10 (aux_info_file, aux_info_base, aux_info_size) !=
	(int) aux_info_size)
      {
	int errno_val = errno;
	FUNC7 ("%s: error reading aux info file '%s': %s\n",
		pname, FUNC12 (NULL, aux_info_filename),
		FUNC21 (errno_val));
	FUNC5 (aux_info_base);
	FUNC4 (aux_info_file);
	return;
      }

    /* Close the aux info file.  */

    if (FUNC4 (aux_info_file))
      {
	int errno_val = errno;
	FUNC7 ("%s: error closing aux info file '%s': %s\n",
		pname, FUNC12 (NULL, aux_info_filename),
		FUNC21 (errno_val));
	FUNC5 (aux_info_base);
	FUNC4 (aux_info_file);
	return;
      }
  }

  /* Delete the aux_info file (unless requested not to).  If the deletion
     fails for some reason, don't even worry about it.  */

  if (must_create && !keep_it)
    if (FUNC19 (aux_info_filename) == -1)
      {
	int errno_val = errno;
	FUNC7 ("%s: can't delete aux info file '%s': %s\n",
		pname, FUNC12 (NULL, aux_info_filename),
		FUNC21 (errno_val));
      }

  /* Save a pointer into the first line of the aux_info file which
     contains the filename of the directory from which the compiler
     was invoked when the associated source file was compiled.
     This information is used later to help create complete
     filenames out of the (potentially) relative filenames in
     the aux_info file.  */

  {
    char *p = aux_info_base;

    while (*p != ':'
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
	   || (*p == ':' && *p && *(p+1) && IS_DIR_SEPARATOR (*(p+1)))
#endif
	   )
      p++;
    p++;
    while (*p == ' ')
      p++;
    invocation_filename = p;	/* Save a pointer to first byte of path.  */
    while (*p != ' ')
      p++;
    *p++ = DIR_SEPARATOR;
    *p++ = '\0';
    while (*p++ != '\n')
      continue;
    aux_info_second_line = p;
    aux_info_relocated_name = 0;
    if (! FUNC0 (invocation_filename))
      {
	/* INVOCATION_FILENAME is relative;
	   append it to BASE_SOURCE_FILENAME's dir.  */
	char *dir_end;
	aux_info_relocated_name = FUNC20 (base_len + (p-invocation_filename));
	FUNC15 (aux_info_relocated_name, base_source_filename);
	dir_end = FUNC17 (aux_info_relocated_name, DIR_SEPARATOR);
#ifdef DIR_SEPARATOR_2
	{
	  char *slash;

	  slash = strrchr (dir_end ? dir_end : aux_info_relocated_name,
			   DIR_SEPARATOR_2);
	  if (slash)
	    dir_end = slash;
	}
#endif
	if (dir_end)
	  dir_end++;
	else
	  dir_end = aux_info_relocated_name;
	FUNC15 (dir_end, invocation_filename);
	invocation_filename = aux_info_relocated_name;
      }
  }


  {
    const char *aux_info_p;

    /* Do a pre-pass on the lines in the aux_info file, making sure that all
       of the source files referenced in there are at least as old as this
       aux_info file itself.  If not, go back and regenerate the aux_info
       file anew.  Don't do any of this for the syscalls file.  */

    if (!is_syscalls)
      {
	current_aux_info_lineno = 2;

	for (aux_info_p = aux_info_second_line; *aux_info_p; )
	  {
	    if (FUNC9 (aux_info_p, aux_info_mtime))
	      {
		FUNC5 (aux_info_base);
		FUNC5 (aux_info_relocated_name);
		if (keep_it && FUNC19 (aux_info_filename) == -1)
		  {
		    int errno_val = errno;
	            FUNC7 ("%s: can't delete file '%s': %s\n",
			    pname, FUNC12 (NULL, aux_info_filename),
			    FUNC21 (errno_val));
	            return;
	          }
		must_create = 1;
	        goto start_over;
	      }

	    /* Skip over the rest of this line to start of next line.  */

	    while (*aux_info_p != '\n')
	      aux_info_p++;
	    aux_info_p++;
	    current_aux_info_lineno++;
	  }
      }

    /* Now do the real pass on the aux_info lines.  Save their information in
       the in-core data base.  */

    current_aux_info_lineno = 2;

    for (aux_info_p = aux_info_second_line; *aux_info_p;)
      {
	char *unexpanded_line = FUNC18 (aux_info_p);

	if (unexpanded_line)
	  {
	    FUNC11 (unexpanded_line, is_syscalls);
	    FUNC5 (unexpanded_line);
	  }
	else
	  FUNC11 (aux_info_p, is_syscalls);

	/* Skip over the rest of this line and get to start of next line.  */

	while (*aux_info_p != '\n')
	  aux_info_p++;
	aux_info_p++;
	current_aux_info_lineno++;
      }
  }

  FUNC5 (aux_info_base);
  FUNC5 (aux_info_relocated_name);
}