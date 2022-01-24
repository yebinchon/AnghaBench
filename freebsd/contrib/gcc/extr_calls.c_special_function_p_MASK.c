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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int ECF_MAY_BE_ALLOCA ; 
 int ECF_NORETURN ; 
 int ECF_RETURNS_TWICE ; 
 int FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TRANSLATION_UNIT_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7 (tree fndecl, int flags)
{
  if (fndecl && FUNC1 (fndecl)
      && FUNC2 (FUNC1 (fndecl)) <= 17
      /* Exclude functions not at the file scope, or not `extern',
	 since they are not the magic functions we would otherwise
	 think they are.
	 FIXME: this should be handled with attributes, not with this
	 hacky imitation of DECL_ASSEMBLER_NAME.  It's (also) wrong
	 because you can declare fork() inside a function if you
	 wish.  */
      && (FUNC0 (fndecl) == NULL_TREE
	  || FUNC4 (FUNC0 (fndecl)) == TRANSLATION_UNIT_DECL)
      && FUNC5 (fndecl))
    {
      const char *name = FUNC3 (FUNC1 (fndecl));
      const char *tname = name;

      /* We assume that alloca will always be called by name.  It
	 makes no sense to pass it as a pointer-to-function to
	 anything that does not understand its behavior.  */
      if (((FUNC2 (FUNC1 (fndecl)) == 6
	    && name[0] == 'a'
	    && ! FUNC6 (name, "alloca"))
	   || (FUNC2 (FUNC1 (fndecl)) == 16
	       && name[0] == '_'
	       && ! FUNC6 (name, "__builtin_alloca"))))
	flags |= ECF_MAY_BE_ALLOCA;

      /* Disregard prefix _, __ or __x.  */
      if (name[0] == '_')
	{
	  if (name[1] == '_' && name[2] == 'x')
	    tname += 3;
	  else if (name[1] == '_')
	    tname += 2;
	  else
	    tname += 1;
	}

      if (tname[0] == 's')
	{
	  if ((tname[1] == 'e'
	       && (! FUNC6 (tname, "setjmp")
		   || ! FUNC6 (tname, "setjmp_syscall")))
	      || (tname[1] == 'i'
		  && ! FUNC6 (tname, "sigsetjmp"))
	      || (tname[1] == 'a'
		  && ! FUNC6 (tname, "savectx")))
	    flags |= ECF_RETURNS_TWICE;

	  if (tname[1] == 'i'
	      && ! FUNC6 (tname, "siglongjmp"))
	    flags |= ECF_NORETURN;
	}
      else if ((tname[0] == 'q' && tname[1] == 's'
		&& ! FUNC6 (tname, "qsetjmp"))
	       || (tname[0] == 'v' && tname[1] == 'f'
		   && ! FUNC6 (tname, "vfork"))
	       || (tname[0] == 'g' && tname[1] == 'e'
		   && !FUNC6 (tname, "getcontext")))
	flags |= ECF_RETURNS_TWICE;

      else if (tname[0] == 'l' && tname[1] == 'o'
	       && ! FUNC6 (tname, "longjmp"))
	flags |= ECF_NORETURN;
    }

  return flags;
}