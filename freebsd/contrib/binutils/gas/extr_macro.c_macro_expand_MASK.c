#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int len; char* ptr; } ;
typedef  TYPE_2__ sb ;
struct TYPE_27__ {TYPE_4__* formals; int /*<<< orphan*/  formal_hash; int /*<<< orphan*/  sub; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ macro_entry ;
struct TYPE_25__ {char* ptr; scalar_t__ len; } ;
struct TYPE_28__ {scalar_t__ index; scalar_t__ type; struct TYPE_28__* next; TYPE_1__ name; TYPE_2__ actual; } ;
typedef  TYPE_4__ formal_entry ;

/* Variables and functions */
 scalar_t__ FORMAL_REQUIRED ; 
 scalar_t__ FORMAL_VARARG ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ QUAL_INDEX ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int,TYPE_2__*,TYPE_2__*) ; 
 int FUNC7 (int,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macro_alternate ; 
 char* FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ macro_mri ; 
 int /*<<< orphan*/  macro_number ; 
 scalar_t__ macro_strip_at ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (int,TYPE_2__*) ; 
 int FUNC17 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 

__attribute__((used)) static const char *
FUNC20 (int idx, sb *in, macro_entry *m, sb *out)
{
  sb t;
  formal_entry *ptr;
  formal_entry *f;
  int is_keyword = 0;
  int narg = 0;
  const char *err = NULL;

  FUNC14 (&t);

  /* Reset any old value the actuals may have.  */
  for (f = m->formals; f; f = f->next)
    FUNC15 (&f->actual);
  f = m->formals;
  while (f != NULL && f->index < 0)
    f = f->next;

  if (macro_mri)
    {
      /* The macro may be called with an optional qualifier, which may
         be referred to in the macro body as \0.  */
      if (idx < in->len && in->ptr[idx] == '.')
	{
	  /* The Microtec assembler ignores this if followed by a white space.
	     (Macro invocation with empty extension) */
	  idx++;
	  if (    idx < in->len
		  && in->ptr[idx] != ' '
		  && in->ptr[idx] != '\t')
	    {
	      formal_entry *n = FUNC10 ();

	      n->index = QUAL_INDEX;

	      n->next = m->formals;
	      m->formals = n;

	      idx = FUNC6 (idx, in, &n->actual);
	    }
	}
    }

  /* Peel off the actuals and store them away in the hash tables' actuals.  */
  idx = FUNC17 (idx, in);
  while (idx < in->len)
    {
      int scan;

      /* Look and see if it's a positional or keyword arg.  */
      scan = idx;
      while (scan < in->len
	     && !FUNC0 (in->ptr[scan])
	     && !(macro_mri && in->ptr[scan] == '\'')
	     && (!macro_alternate && in->ptr[scan] != '='))
	scan++;
      if (scan < in->len && !macro_alternate && in->ptr[scan] == '=')
	{
	  is_keyword = 1;

	  /* It's OK to go from positional to keyword.  */

	  /* This is a keyword arg, fetch the formal name and
	     then the actual stuff.  */
	  FUNC15 (&t);
	  idx = FUNC7 (idx, in, &t);
	  if (in->ptr[idx] != '=')
	    {
	      err = FUNC2("confusion in formal parameters");
	      break;
	    }

	  /* Lookup the formal in the macro's list.  */
	  ptr = (formal_entry *) FUNC8 (m->formal_hash, FUNC18 (&t));
	  if (!ptr)
	    FUNC3 (FUNC2("Parameter named `%s' does not exist for macro `%s'"),
		    t.ptr,
		    m->name);
	  else
	    {
	      /* Insert this value into the right place.  */
	      if (ptr->actual.len)
		{
		  FUNC4 (FUNC2("Value for parameter `%s' of macro `%s' was already specified"),
			   ptr->name.ptr,
			   m->name);
		  FUNC15 (&ptr->actual);
		}
	      idx = FUNC6 (idx + 1, in, &ptr->actual);
	      if (ptr->actual.len > 0)
		++narg;
	    }
	}
      else
	{
	  if (is_keyword)
	    {
	      err = FUNC2("can't mix positional and keyword arguments");
	      break;
	    }

	  if (!f)
	    {
	      formal_entry **pf;
	      int c;

	      if (!macro_mri)
		{
		  err = FUNC2("too many positional arguments");
		  break;
		}

	      f = FUNC10 ();

	      c = -1;
	      for (pf = &m->formals; *pf != NULL; pf = &(*pf)->next)
		if ((*pf)->index >= c)
		  c = (*pf)->index + 1;
	      if (c == -1)
		c = 0;
	      *pf = f;
	      f->index = c;
	    }

	  if (f->type != FORMAL_VARARG)
	    idx = FUNC6 (idx, in, &f->actual);
	  else
	    {
	      FUNC11 (&f->actual, in->ptr + idx, in->len - idx);
	      idx = in->len;
	    }
	  if (f->actual.len > 0)
	    ++narg;
	  do
	    {
	      f = f->next;
	    }
	  while (f != NULL && f->index < 0);
	}

      if (! macro_mri)
	idx = FUNC16 (idx, in);
      else
	{
	  if (in->ptr[idx] == ',')
	    ++idx;
	  if (FUNC1 (in->ptr[idx]))
	    break;
	}
    }

  if (! err)
    {
      for (ptr = m->formals; ptr; ptr = ptr->next)
	{
	  if (ptr->type == FORMAL_REQUIRED && ptr->actual.len == 0)
	    FUNC3 (FUNC2("Missing value for required parameter `%s' of macro `%s'"),
		    ptr->name.ptr,
		    m->name);
	}

      if (macro_mri)
	{
	  char buffer[20];

	  FUNC15 (&t);
	  FUNC12 (&t, macro_strip_at ? "$NARG" : "NARG");
	  ptr = (formal_entry *) FUNC8 (m->formal_hash, FUNC18 (&t));
	  FUNC19 (buffer, "%d", narg);
	  FUNC12 (&ptr->actual, buffer);
	}

      err = FUNC9 (&m->sub, out, m->formals, m->formal_hash, m);
    }

  /* Discard any unnamed formal arguments.  */
  if (macro_mri)
    {
      formal_entry **pf;

      pf = &m->formals;
      while (*pf != NULL)
	{
	  if ((*pf)->name.len != 0)
	    pf = &(*pf)->next;
	  else
	    {
	      f = (*pf)->next;
	      FUNC5 (*pf);
	      *pf = f;
	    }
	}
    }

  FUNC13 (&t);
  if (!err)
    macro_number++;

  return err;
}