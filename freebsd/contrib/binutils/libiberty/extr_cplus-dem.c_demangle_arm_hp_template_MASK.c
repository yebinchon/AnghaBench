#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct work_stuff {int temp_start; int options; } ;
struct TYPE_13__ {int p; int b; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int DMGL_PARAMS ; 
 scalar_t__ HP_DEMANGLING ; 
 scalar_t__ FUNC0 (struct work_stuff*,char const*,int,char const**,char const**) ; 
 char const* cplus_markers ; 
 int /*<<< orphan*/  FUNC1 (struct work_stuff*,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct work_stuff*,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct work_stuff*,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_1__*) ; 
 char* FUNC5 (char const*,char const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC12 (struct work_stuff *work, const char **mangled,
                          int n, string *declp)
{
  const char *p;
  const char *args;
  const char *e = *mangled + n;
  string arg;

  /* Check for HP aCC template spec: classXt1t2 where t1, t2 are
     template args */
  if (HP_DEMANGLING && ((*mangled)[n] == 'X'))
    {
      char *start_spec_args = NULL;
      int hold_options;

      /* First check for and omit template specialization pseudo-arguments,
         such as in "Spec<#1,#1.*>" */
      start_spec_args = FUNC5 (*mangled, '<');
      if (start_spec_args && (start_spec_args - *mangled < n))
        FUNC7 (declp, *mangled, start_spec_args - *mangled);
      else
        FUNC7 (declp, *mangled, n);
      (*mangled) += n + 1;
      FUNC10 (&arg);
      if (work->temp_start == -1) /* non-recursive call */
        work->temp_start = declp->p - declp->b;

      /* We want to unconditionally demangle parameter types in
	 template parameters.  */
      hold_options = work->options;
      work->options |= DMGL_PARAMS;

      FUNC6 (declp, "<");
      while (1)
        {
          FUNC9 (&arg);
          switch (**mangled)
            {
              case 'T':
                /* 'T' signals a type parameter */
                (*mangled)++;
                if (!FUNC3 (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'U':
              case 'S':
                /* 'U' or 'S' signals an integral value */
                if (!FUNC1 (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'A':
                /* 'A' signals a named constant expression (literal) */
                if (!FUNC2 (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              default:
                /* Today, 1997-09-03, we have only the above types
                   of template parameters */
                /* FIXME: maybe this should fail and return null */
                goto hpacc_template_args_done;
            }
          FUNC8 (declp, &arg);
         /* Check if we're at the end of template args.
             0 if at end of static member of template class,
             _ if done with template args for a function */
          if ((**mangled == '\000') || (**mangled == '_'))
            break;
          else
            FUNC6 (declp, ",");
        }
    hpacc_template_args_done:
      FUNC6 (declp, ">");
      FUNC9 (&arg);
      if (**mangled == '_')
        (*mangled)++;
      work->options = hold_options;
      return;
    }
  /* ARM template? (Also handles HP cfront extensions) */
  else if (FUNC0 (work, *mangled, n, &p, &args))
    {
      int hold_options;
      string type_str;

      FUNC10 (&arg);
      FUNC7 (declp, *mangled, p - *mangled);
      if (work->temp_start == -1)  /* non-recursive call */
	work->temp_start = declp->p - declp->b;

      /* We want to unconditionally demangle parameter types in
	 template parameters.  */
      hold_options = work->options;
      work->options |= DMGL_PARAMS;

      FUNC6 (declp, "<");
      /* should do error checking here */
      while (args < e) {
	FUNC9 (&arg);

	/* Check for type or literal here */
	switch (*args)
	  {
	    /* HP cfront extensions to ARM for template args */
	    /* spec: Xt1Lv1 where t1 is a type, v1 is a literal value */
	    /* FIXME: We handle only numeric literals for HP cfront */
          case 'X':
            /* A typed constant value follows */
            args++;
            if (!FUNC3 (work, &args, &type_str))
	      goto cfront_template_args_done;
            FUNC6 (&arg, "(");
            FUNC8 (&arg, &type_str);
            FUNC9 (&type_str);
            FUNC6 (&arg, ")");
            if (*args != 'L')
              goto cfront_template_args_done;
            args++;
            /* Now snarf a literal value following 'L' */
            if (!FUNC4 (&args, &arg))
	      goto cfront_template_args_done;
            break;

          case 'L':
            /* Snarf a literal following 'L' */
            args++;
            if (!FUNC4 (&args, &arg))
	      goto cfront_template_args_done;
            break;
          default:
            /* Not handling other HP cfront stuff */
            {
              const char* old_args = args;
              if (!FUNC3 (work, &args, &arg))
                goto cfront_template_args_done;

              /* Fail if we didn't make any progress: prevent infinite loop. */
              if (args == old_args)
		{
		  work->options = hold_options;
		  return;
		}
            }
	  }
	FUNC8 (declp, &arg);
	FUNC6 (declp, ",");
      }
    cfront_template_args_done:
      FUNC9 (&arg);
      if (args >= e)
	--declp->p; /* remove extra comma */
      FUNC6 (declp, ">");
      work->options = hold_options;
    }
  else if (n>10 && FUNC11 (*mangled, "_GLOBAL_", 8) == 0
	   && (*mangled)[9] == 'N'
	   && (*mangled)[8] == (*mangled)[10]
	   && FUNC5 (cplus_markers, (*mangled)[8]))
    {
      /* A member of the anonymous namespace.  */
      FUNC6 (declp, "{anonymous}");
    }
  else
    {
      if (work->temp_start == -1) /* non-recursive call only */
	work->temp_start = 0;     /* disable in recursive calls */
      FUNC7 (declp, *mangled, n);
    }
  *mangled += n;
}