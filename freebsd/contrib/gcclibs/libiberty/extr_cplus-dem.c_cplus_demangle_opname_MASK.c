#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work ;
struct work_stuff {int options; } ;
struct TYPE_6__ {scalar_t__ b; scalar_t__ p; } ;
typedef  TYPE_1__ string ;
struct TYPE_7__ {char const* in; char* out; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  cplus_markers ; 
 scalar_t__ FUNC2 (struct work_stuff*,char const**,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* optable ; 
 int /*<<< orphan*/  FUNC5 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__) ; 

int
FUNC11 (const char *opname, char *result, int options)
{
  int len, len1, ret;
  string type;
  struct work_stuff work[1];
  const char *tem;

  len = FUNC9(opname);
  result[0] = '\0';
  ret = 0;
  FUNC4 ((char *) work, 0, sizeof (work));
  work->options = options;

  if (opname[0] == '_' && opname[1] == '_'
      && opname[2] == 'o' && opname[3] == 'p')
    {
      /* ANSI.  */
      /* type conversion operator.  */
      tem = opname + 4;
      if (FUNC2 (work, &tem, &type))
	{
	  FUNC6 (result, "operator ");
	  FUNC10 (result, type.b, type.p - type.b);
	  FUNC8 (&type);
	  ret = 1;
	}
    }
  else if (opname[0] == '_' && opname[1] == '_'
	   && FUNC1((unsigned char)opname[2])
	   && FUNC1((unsigned char)opname[3]))
    {
      if (opname[4] == '\0')
	{
	  /* Operator.  */
	  size_t i;
	  for (i = 0; i < FUNC0 (optable); i++)
	    {
	      if (FUNC9 (optable[i].in) == 2
		  && FUNC3 (optable[i].in, opname + 2, 2) == 0)
		{
		  FUNC6 (result, "operator");
		  FUNC6 (result, optable[i].out);
		  ret = 1;
		  break;
		}
	    }
	}
      else
	{
	  if (opname[2] == 'a' && opname[5] == '\0')
	    {
	      /* Assignment.  */
	      size_t i;
	      for (i = 0; i < FUNC0 (optable); i++)
		{
		  if (FUNC9 (optable[i].in) == 3
		      && FUNC3 (optable[i].in, opname + 2, 3) == 0)
		    {
		      FUNC6 (result, "operator");
		      FUNC6 (result, optable[i].out);
		      ret = 1;
		      break;
		    }
		}
	    }
	}
    }
  else if (len >= 3
	   && opname[0] == 'o'
	   && opname[1] == 'p'
	   && FUNC7 (cplus_markers, opname[2]) != NULL)
    {
      /* see if it's an assignment expression */
      if (len >= 10 /* op$assign_ */
	  && FUNC3 (opname + 3, "assign_", 7) == 0)
	{
	  size_t i;
	  for (i = 0; i < FUNC0 (optable); i++)
	    {
	      len1 = len - 10;
	      if ((int) FUNC9 (optable[i].in) == len1
		  && FUNC3 (optable[i].in, opname + 10, len1) == 0)
		{
		  FUNC6 (result, "operator");
		  FUNC6 (result, optable[i].out);
		  FUNC6 (result, "=");
		  ret = 1;
		  break;
		}
	    }
	}
      else
	{
	  size_t i;
	  for (i = 0; i < FUNC0 (optable); i++)
	    {
	      len1 = len - 3;
	      if ((int) FUNC9 (optable[i].in) == len1
		  && FUNC3 (optable[i].in, opname + 3, len1) == 0)
		{
		  FUNC6 (result, "operator");
		  FUNC6 (result, optable[i].out);
		  ret = 1;
		  break;
		}
	    }
	}
    }
  else if (len >= 5 && FUNC3 (opname, "type", 4) == 0
	   && FUNC7 (cplus_markers, opname[4]) != NULL)
    {
      /* type conversion operator */
      tem = opname + 5;
      if (FUNC2 (work, &tem, &type))
	{
	  FUNC6 (result, "operator ");
	  FUNC10 (result, type.b, type.p - type.b);
	  FUNC8 (&type);
	  ret = 1;
	}
    }
  FUNC5 (work);
  return ret;

}