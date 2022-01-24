#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pex_obj {int next_input; int /*<<< orphan*/ * read_output; TYPE_1__* funcs; int /*<<< orphan*/ * next_input_name; scalar_t__ next_input_name_allocated; } ;
struct TYPE_2__ {int /*<<< orphan*/ * (* fdopenr ) (struct pex_obj*,int,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int STDIN_FILE_NO ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pex_obj*,int /*<<< orphan*/ ,char const**,int*) ; 
 int /*<<< orphan*/ * FUNC3 (struct pex_obj*,int,int) ; 

FILE *
FUNC4 (struct pex_obj *obj, int binary)
{
  if (obj->next_input_name != NULL)
    {
      const char *errmsg;
      int err;

      /* We have to make sure that the process has completed before we
	 try to read the file.  */
      if (!FUNC2 (obj, 0, &errmsg, &err))
	{
	  errno = err;
	  return NULL;
	}

      obj->read_output = FUNC0 (obj->next_input_name, binary ? "rb" : "r");

      if (obj->next_input_name_allocated)
	{
	  FUNC1 (obj->next_input_name);
	  obj->next_input_name_allocated = 0;
	}
      obj->next_input_name = NULL;
    }
  else
    {
      int o;

      o = obj->next_input;
      if (o < 0 || o == STDIN_FILE_NO)
	return NULL;
      obj->read_output = obj->funcs->fdopenr (obj, o, binary);
      obj->next_input = -1;
    }

  return obj->read_output;
}