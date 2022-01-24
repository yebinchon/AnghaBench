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
struct symbol_list {char* names; int flags; } ;
struct fn_decl {char* fname; char* rtype; char* params; } ;

/* Variables and functions */
 int ANSI_SYMBOL ; 
 int MACRO_SYMBOL ; 
 int POSIX1_SYMBOL ; 
 int POSIX2_SYMBOL ; 
 int /*<<< orphan*/  FUNC0 (struct fn_decl*) ; 
 int XOPEN_EXTENDED_SYMBOL ; 
 int XOPEN_SYMBOL ; 
#define  errno_h 130 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct fn_decl* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  outf ; 
 scalar_t__ required_unseen_count ; 
 int /*<<< orphan*/  seen_EXIT_FAILURE ; 
 int /*<<< orphan*/  seen_EXIT_SUCCESS ; 
 int /*<<< orphan*/  seen_S_IFBLK ; 
 int /*<<< orphan*/  seen_S_IFCHR ; 
 int /*<<< orphan*/  seen_S_IFDIR ; 
 int /*<<< orphan*/  seen_S_IFIFO ; 
 int /*<<< orphan*/  seen_S_IFLNK ; 
 int /*<<< orphan*/  seen_S_IFREG ; 
 int /*<<< orphan*/  seen_S_ISBLK ; 
 int /*<<< orphan*/  seen_S_ISCHR ; 
 int /*<<< orphan*/  seen_S_ISDIR ; 
 int /*<<< orphan*/  seen_S_ISFIFO ; 
 int /*<<< orphan*/  seen_S_ISLNK ; 
 int /*<<< orphan*/  seen_S_ISREG ; 
 int /*<<< orphan*/  seen_errno ; 
 int special_file_handling ; 
#define  stdlib_h 129 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 
 struct symbol_list* symbol_table ; 
#define  sys_stat_h 128 

__attribute__((used)) static void
FUNC6 (void)
{
  struct fn_decl *fn;
  const char *cptr;
  struct symbol_list *cur_symbols;

  if (required_unseen_count)
    {
#ifdef NO_IMPLICIT_EXTERN_C
      fprintf (outf, "#ifdef __cplusplus\nextern \"C\" {\n#endif\n");
#endif
    }

  /* Now we print out prototypes for those functions that we haven't seen.  */
  for (cur_symbols = &symbol_table[0]; cur_symbols->names; cur_symbols++)
    {
      int if_was_emitted = 0;
      int name_len;
      cptr = cur_symbols->names;
      for ( ; (name_len = FUNC5 (cptr)) != 0; cptr+= name_len + 1)
	{
	  int macro_protect = 0;

	  if (cur_symbols->flags & MACRO_SYMBOL)
	    continue;

	  fn = FUNC3 (cptr, name_len);
	  if (fn == NULL || !FUNC0 (fn))
	    continue;

	  if (!if_was_emitted)
	    {
/*	      what about curses. ??? or _flsbuf/_filbuf ??? */
	      if (cur_symbols->flags & ANSI_SYMBOL)
		FUNC2 (outf,
	 "#if defined(__USE_FIXED_PROTOTYPES__) || defined(__cplusplus) || defined (__STRICT_ANSI__)\n");
	      else if (cur_symbols->flags & (POSIX1_SYMBOL|POSIX2_SYMBOL))
		FUNC2 (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) || (defined(__cplusplus) \\\n\
    ? (!defined(__STRICT_ANSI__) || defined(_POSIX_SOURCE)) \\\n\
    : (defined(__STRICT_ANSI__) && defined(_POSIX_SOURCE)))\n");
	      else if (cur_symbols->flags & XOPEN_SYMBOL)
		{
		FUNC2 (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) \\\n\
   || (defined(__STRICT_ANSI__) && defined(_XOPEN_SOURCE))\n");
		}
	      else if (cur_symbols->flags & XOPEN_EXTENDED_SYMBOL)
		{
		FUNC2 (outf,
       "#if defined(__USE_FIXED_PROTOTYPES__) \\\n\
   || (defined(__STRICT_ANSI__) && defined(_XOPEN_EXTENDED_SOURCE))\n");
		}
	      else
		{
		  FUNC1 ("internal error for function %s", fn->fname);
		}
	      if_was_emitted = 1;
	    }

	  /* In the case of memmove, protect in case the application
	     defines it as a macro before including the header.  */
	  if (!FUNC4 (fn->fname, "memmove")
	      || !FUNC4 (fn->fname, "putc")
	      || !FUNC4 (fn->fname, "getc")
	      || !FUNC4 (fn->fname, "vprintf")
	      || !FUNC4 (fn->fname, "vfprintf")
	      || !FUNC4 (fn->fname, "vsprintf")
	      || !FUNC4 (fn->fname, "rewinddir")
	      || !FUNC4 (fn->fname, "abort"))
	    macro_protect = 1;

	  if (macro_protect)
	    FUNC2 (outf, "#ifndef %s\n", fn->fname);
	  FUNC2 (outf, "extern %s %s (%s);\n",
		   fn->rtype, fn->fname, fn->params);
	  if (macro_protect)
	    FUNC2 (outf, "#endif\n");
	}
      if (if_was_emitted)
	FUNC2 (outf,
		 "#endif /* defined(__USE_FIXED_PROTOTYPES__) || ... */\n");
    }
  if (required_unseen_count)
    {
#ifdef NO_IMPLICIT_EXTERN_C
      fprintf (outf, "#ifdef __cplusplus\n}\n#endif\n");
#endif
    }

  switch (special_file_handling)
    {
    case errno_h:
      if (!seen_errno)
	FUNC2 (outf, "extern int errno;\n");
      break;
    case stdlib_h:
      if (!seen_EXIT_FAILURE)
	FUNC2 (outf, "#define EXIT_FAILURE 1\n");
      if (!seen_EXIT_SUCCESS)
	FUNC2 (outf, "#define EXIT_SUCCESS 0\n");
      break;
    case sys_stat_h:
      if (!seen_S_ISBLK && seen_S_IFBLK)
	FUNC2 (outf,
		 "#define S_ISBLK(mode) (((mode) & S_IFMT) == S_IFBLK)\n");
      if (!seen_S_ISCHR && seen_S_IFCHR)
	FUNC2 (outf,
		 "#define S_ISCHR(mode) (((mode) & S_IFMT) == S_IFCHR)\n");
      if (!seen_S_ISDIR && seen_S_IFDIR)
	FUNC2 (outf,
		 "#define S_ISDIR(mode) (((mode) & S_IFMT) == S_IFDIR)\n");
      if (!seen_S_ISFIFO && seen_S_IFIFO)
	FUNC2 (outf,
		 "#define S_ISFIFO(mode) (((mode) & S_IFMT) == S_IFIFO)\n");
      if (!seen_S_ISLNK && seen_S_IFLNK)
	FUNC2 (outf,
		 "#define S_ISLNK(mode) (((mode) & S_IFMT) == S_IFLNK)\n");
      if (!seen_S_ISREG && seen_S_IFREG)
	FUNC2 (outf,
		 "#define S_ISREG(mode) (((mode) & S_IFMT) == S_IFREG)\n");
      break;

    default:
      break;
    }

}