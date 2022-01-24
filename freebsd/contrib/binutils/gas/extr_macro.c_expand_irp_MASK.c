#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct hash_control {int dummy; } ;
struct TYPE_24__ {scalar_t__ len; char* ptr; } ;
typedef  TYPE_1__ sb ;
struct TYPE_25__ {int index; TYPE_1__ name; TYPE_1__ def; TYPE_1__ actual; int /*<<< orphan*/  type; int /*<<< orphan*/ * next; } ;
typedef  TYPE_3__ formal_entry ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FORMAL_OPTIONAL ; 
 int TRUE ; 
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int (*) (TYPE_1__*)) ; 
 int FUNC2 (int,TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (int,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_control*) ; 
 char* FUNC5 (struct hash_control*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct hash_control* FUNC6 () ; 
 char* FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_3__*,struct hash_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int,TYPE_1__*) ; 
 int FUNC13 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

const char *
FUNC15 (int irpc, int idx, sb *in, sb *out, int (*get_line) (sb *))
{
  sb sub;
  formal_entry f;
  struct hash_control *h;
  const char *err;

  idx = FUNC13 (idx, in);

  FUNC10 (&sub);
  if (! FUNC1 (NULL, "ENDR", &sub, get_line))
    return FUNC0("unexpected end of file in irp or irpc");

  FUNC10 (&f.name);
  FUNC10 (&f.def);
  FUNC10 (&f.actual);

  idx = FUNC3 (idx, in, &f.name);
  if (f.name.len == 0)
    return FUNC0("missing model parameter");

  h = FUNC6 ();
  err = FUNC5 (h, FUNC14 (&f.name), &f);
  if (err != NULL)
    return err;

  f.index = 1;
  f.next = NULL;
  f.type = FORMAL_OPTIONAL;

  FUNC11 (out);

  idx = FUNC12 (idx, in);
  if (idx >= in->len)
    {
      /* Expand once with a null string.  */
      err = FUNC7 (&sub, out, &f, h, 0);
    }
  else
    {
      bfd_boolean in_quotes = FALSE;

      if (irpc && in->ptr[idx] == '"')
	{
	  in_quotes = TRUE;
	  ++idx;
	}

      while (idx < in->len)
	{
	  if (!irpc)
	    idx = FUNC2 (idx, in, &f.actual);
	  else
	    {
	      if (in->ptr[idx] == '"')
		{
		  int nxt;

		  if (irpc)
		    in_quotes = ! in_quotes;
	  
		  nxt = FUNC13 (idx + 1, in);
		  if (nxt >= in->len)
		    {
		      idx = nxt;
		      break;
		    }
		}
	      FUNC11 (&f.actual);
	      FUNC8 (&f.actual, in->ptr[idx]);
	      ++idx;
	    }

	  err = FUNC7 (&sub, out, &f, h, 0);
	  if (err != NULL)
	    break;
	  if (!irpc)
	    idx = FUNC12 (idx, in);
	  else if (! in_quotes)
	    idx = FUNC13 (idx, in);
	}
    }

  FUNC4 (h);
  FUNC9 (&f.actual);
  FUNC9 (&f.def);
  FUNC9 (&f.name);
  FUNC9 (&sub);

  return err;
}