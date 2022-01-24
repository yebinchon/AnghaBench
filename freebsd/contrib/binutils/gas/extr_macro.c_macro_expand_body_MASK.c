#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct hash_control {int dummy; } ;
struct TYPE_26__ {int len; char* ptr; } ;
typedef  TYPE_1__ sb ;
struct TYPE_27__ {scalar_t__ line; int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ macro_entry ;
struct TYPE_28__ {int index; TYPE_1__ name; struct TYPE_28__* next; TYPE_1__ actual; TYPE_1__ def; } ;
typedef  TYPE_3__ formal_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ IS_ELF ; 
 int LOCAL_INDEX ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct hash_control*,char const*) ; 
 char* FUNC9 (struct hash_control*,char const*,TYPE_3__*) ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ macro_alternate ; 
 scalar_t__ macro_mri ; 
 int macro_number ; 
 scalar_t__ macro_strip_at ; 
 TYPE_3__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (int,TYPE_1__*) ; 
 int FUNC19 (int,TYPE_1__*) ; 
 char const* FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 
 int FUNC23 (int,TYPE_1__*,TYPE_1__*,struct hash_control*,char,TYPE_1__*,int) ; 

__attribute__((used)) static const char *
FUNC24 (sb *in, sb *out, formal_entry *formals,
		   struct hash_control *formal_hash, const macro_entry *macro)
{
  sb t;
  int src = 0, inquote = 0, macro_line = 0;
  formal_entry *loclist = NULL;
  const char *err = NULL;

  FUNC16 (&t);

  while (src < in->len && !err)
    {
      if (in->ptr[src] == '&')
	{
	  FUNC17 (&t);
	  if (macro_mri)
	    {
	      if (src + 1 < in->len && in->ptr[src + 1] == '&')
		src = FUNC23 (src + 2, in, &t, formal_hash, '\'', out, 1);
	      else
		FUNC12 (out, in->ptr[src++]);
	    }
	  else
	    {
	      /* FIXME: Why do we do this?  */
	      /* At least in alternate mode this seems correct; without this
	         one can't append a literal to a parameter.  */
	      src = FUNC23 (src + 1, in, &t, formal_hash, '&', out, 0);
	    }
	}
      else if (in->ptr[src] == '\\')
	{
	  src++;
	  if (src < in->len && in->ptr[src] == '(')
	    {
	      /* Sub in till the next ')' literally.  */
	      src++;
	      while (src < in->len && in->ptr[src] != ')')
		{
		  FUNC12 (out, in->ptr[src++]);
		}
	      if (src < in->len)
		src++;
	      else if (!macro)
		err = FUNC4("missing `)'");
	      else
		FUNC5 (macro->file, macro->line + macro_line, FUNC4("missing `)'"));
	    }
	  else if (src < in->len && in->ptr[src] == '@')
	    {
	      /* Sub in the macro invocation number.  */

	      char buffer[10];
	      src++;
	      FUNC21 (buffer, "%d", macro_number);
	      FUNC14 (out, buffer);
	    }
	  else if (src < in->len && in->ptr[src] == '&')
	    {
	      /* This is a preprocessor variable name, we don't do them
		 here.  */
	      FUNC12 (out, '\\');
	      FUNC12 (out, '&');
	      src++;
	    }
	  else if (macro_mri && src < in->len && FUNC0 (in->ptr[src]))
	    {
	      int ind;
	      formal_entry *f;

	      if (FUNC1 (in->ptr[src]))
		ind = in->ptr[src] - '0';
	      else if (FUNC2 (in->ptr[src]))
		ind = in->ptr[src] - 'A' + 10;
	      else
		ind = in->ptr[src] - 'a' + 10;
	      ++src;
	      for (f = formals; f != NULL; f = f->next)
		{
		  if (f->index == ind - 1)
		    {
		      if (f->actual.len != 0)
			FUNC13 (out, &f->actual);
		      else
			FUNC13 (out, &f->def);
		      break;
		    }
		}
	    }
	  else
	    {
	      FUNC17 (&t);
	      src = FUNC23 (src, in, &t, formal_hash, '\'', out, 0);
	    }
	}
      else if ((macro_alternate || macro_mri)
	       && FUNC10 (in->ptr[src])
	       && (! inquote
		   || ! macro_strip_at
		   || (src > 0 && in->ptr[src - 1] == '@')))
	{
	  if (! macro
	      || src + 5 >= in->len
	      || FUNC22 (in->ptr + src, "LOCAL", 5) != 0
	      || ! FUNC3 (in->ptr[src + 5]))
	    {
	      FUNC17 (&t);
	      src = FUNC23 (src, in, &t, formal_hash,
				(macro_strip_at && inquote) ? '@' : '\'',
				out, 1);
	    }
	  else
	    {
	      src = FUNC19 (src + 5, in);
	      while (in->ptr[src] != '\n')
		{
		  const char *name;
		  formal_entry *f = FUNC11 ();

		  src = FUNC7 (src, in, &f->name);
		  name = FUNC20 (&f->name);
		  if (! FUNC8 (formal_hash, name))
		    {
		      static int loccnt;
		      char buf[20];

		      f->index = LOCAL_INDEX;
		      f->next = loclist;
		      loclist = f;

		      FUNC21 (buf, IS_ELF ? ".LL%04x" : "LL%04x", ++loccnt);
		      FUNC14 (&f->actual, buf);

		      err = FUNC9 (formal_hash, name, f);
		      if (err != NULL)
			break;
		    }
		  else
		    {
		      FUNC5 (macro->file,
				    macro->line + macro_line,
				    FUNC4("`%s' was already used as parameter (or another local) name"),
				    name);
		      FUNC6 (f);
		    }

		  src = FUNC18 (src, in);
		}
	    }
	}
      else if (in->ptr[src] == '"'
	       || (macro_mri && in->ptr[src] == '\''))
	{
	  inquote = !inquote;
	  FUNC12 (out, in->ptr[src++]);
	}
      else if (in->ptr[src] == '@' && macro_strip_at)
	{
	  ++src;
	  if (src < in->len
	      && in->ptr[src] == '@')
	    {
	      FUNC12 (out, '@');
	      ++src;
	    }
	}
      else if (macro_mri
	       && in->ptr[src] == '='
	       && src + 1 < in->len
	       && in->ptr[src + 1] == '=')
	{
	  formal_entry *ptr;

	  FUNC17 (&t);
	  src = FUNC7 (src + 2, in, &t);
	  ptr = (formal_entry *) FUNC8 (formal_hash, FUNC20 (&t));
	  if (ptr == NULL)
	    {
	      /* FIXME: We should really return a warning string here,
                 but we can't, because the == might be in the MRI
                 comment field, and, since the nature of the MRI
                 comment field depends upon the exact instruction
                 being used, we don't have enough information here to
                 figure out whether it is or not.  Instead, we leave
                 the == in place, which should cause a syntax error if
                 it is not in a comment.  */
	      FUNC12 (out, '=');
	      FUNC12 (out, '=');
	      FUNC13 (out, &t);
	    }
	  else
	    {
	      if (ptr->actual.len)
		{
		  FUNC14 (out, "-1");
		}
	      else
		{
		  FUNC12 (out, '0');
		}
	    }
	}
      else
	{
	  if (in->ptr[src] == '\n')
	    ++macro_line;
	  FUNC12 (out, in->ptr[src++]);
	}
    }

  FUNC15 (&t);

  while (loclist != NULL)
    {
      formal_entry *f;

      f = loclist->next;
      /* Setting the value to NULL effectively deletes the entry.  We
         avoid calling hash_delete because it doesn't reclaim memory.  */
      FUNC9 (formal_hash, FUNC20 (&loclist->name), NULL);
      FUNC6 (loclist);
      loclist = f;
    }

  return err;
}