#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int len; char* ptr; } ;
typedef  TYPE_1__ sb ;
struct TYPE_18__ {int /*<<< orphan*/  formal_hash; int /*<<< orphan*/  name; int /*<<< orphan*/  line; int /*<<< orphan*/  file; scalar_t__ formal_count; TYPE_3__* formals; } ;
typedef  TYPE_2__ macro_entry ;
struct TYPE_19__ {scalar_t__ type; scalar_t__ index; TYPE_1__ name; struct TYPE_19__* next; int /*<<< orphan*/  def; } ;
typedef  TYPE_3__ formal_entry ;

/* Variables and functions */
 scalar_t__ FORMAL_REQUIRED ; 
 scalar_t__ FORMAL_VARARG ; 
 scalar_t__ NARG_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 scalar_t__ macro_mri ; 
 scalar_t__ macro_strip_at ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,TYPE_1__*) ; 
 int FUNC15 (int,TYPE_1__*) ; 
 char* FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 

__attribute__((used)) static int
FUNC18 (macro_entry *macro, int idx, sb *in)
{
  formal_entry **p = &macro->formals;
  const char *name;

  idx = FUNC15 (idx, in);
  while (idx < in->len)
    {
      formal_entry *formal = FUNC9 ();
      int cidx;

      idx = FUNC4 (idx, in, &formal->name);
      if (formal->name.len == 0)
	{
	  if (macro->formal_count)
	    --idx;
	  break;
	}
      idx = FUNC15 (idx, in);
      /* This is a formal.  */
      name = FUNC16 (&formal->name);
      if (! macro_mri
	  && idx < in->len
	  && in->ptr[idx] == ':'
	  && (! FUNC7 (':')
	      || idx + 1 >= in->len
	      || ! FUNC8 (in->ptr[idx + 1])))
	{
	  /* Got a qualifier.  */
	  sb qual;

	  FUNC12 (&qual);
	  idx = FUNC4 (FUNC15 (idx + 1, in), in, &qual);
	  FUNC16 (&qual);
	  if (qual.len == 0)
	    FUNC1 (macro->file,
			  macro->line,
			  FUNC0("Missing parameter qualifier for `%s' in macro `%s'"),
			  name,
			  macro->name);
	  else if (FUNC17 (qual.ptr, "req") == 0)
	    formal->type = FORMAL_REQUIRED;
	  else if (FUNC17 (qual.ptr, "vararg") == 0)
	    formal->type = FORMAL_VARARG;
	  else
	    FUNC1 (macro->file,
			  macro->line,
			  FUNC0("`%s' is not a valid parameter qualifier for `%s' in macro `%s'"),
			  qual.ptr,
			  name,
			  macro->name);
	  FUNC11 (&qual);
	  idx = FUNC15 (idx, in);
	}
      if (idx < in->len && in->ptr[idx] == '=')
	{
	  /* Got a default.  */
	  idx = FUNC3 (idx + 1, in, &formal->def);
	  idx = FUNC15 (idx, in);
	  if (formal->type == FORMAL_REQUIRED)
	    {
	      FUNC13 (&formal->def);
	      FUNC2 (macro->file,
			    macro->line,
			    FUNC0("Pointless default value for required parameter `%s' in macro `%s'"),
			    name,
			    macro->name);
	    }
	}

      /* Add to macro's hash table.  */
      if (! FUNC5 (macro->formal_hash, name))
	FUNC6 (macro->formal_hash, name, formal);
      else
	FUNC1 (macro->file,
		      macro->line,
		      FUNC0("A parameter named `%s' already exists for macro `%s'"),
		      name,
		      macro->name);

      formal->index = macro->formal_count++;
      *p = formal;
      p = &formal->next;
      if (formal->type == FORMAL_VARARG)
	break;
      cidx = idx;
      idx = FUNC14 (idx, in);
      if (idx != cidx && idx >= in->len)
	{
	  idx = cidx;
	  break;
	}
    }

  if (macro_mri)
    {
      formal_entry *formal = FUNC9 ();

      /* Add a special NARG formal, which macro_expand will set to the
         number of arguments.  */
      /* The same MRI assemblers which treat '@' characters also use
         the name $NARG.  At least until we find an exception.  */
      if (macro_strip_at)
	name = "$NARG";
      else
	name = "NARG";

      FUNC10 (&formal->name, name);

      /* Add to macro's hash table.  */
      if (FUNC5 (macro->formal_hash, name))
	FUNC1 (macro->file,
		      macro->line,
		      FUNC0("Reserved word `%s' used as parameter in macro `%s'"),
		      name,
		      macro->name);
      FUNC6 (macro->formal_hash, name, formal);

      formal->index = NARG_INDEX;
      *p = formal;
    }

  return idx;
}