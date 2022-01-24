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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 char* HOST_BIT_BUCKET ; 
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char** FUNC3 (int) ; 
 int aux_info_file_name_index ; 
 int /*<<< orphan*/  compile_params ; 
 char* compiler_file_name ; 
 char* FUNC4 (char const*,size_t) ; 
 int input_file_name_index ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**,int) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (const char *params_list)
{
  /* Build up the contents in a temporary vector
     that is so big that to has to be big enough.  */
  const char **temp_params
    = FUNC3 ((FUNC7 (params_list) + 8) * sizeof (char *));
  int param_count = 0;
  const char *param;
  struct stat st;

  temp_params[param_count++] = compiler_file_name;
  for (;;)
    {
      while (FUNC0 ((const unsigned char)*params_list))
	params_list++;
      if (!*params_list)
	break;
      param = params_list;
      while (*params_list && !FUNC0 ((const unsigned char)*params_list))
	params_list++;
      if (param[0] != '-')
	temp_params[param_count++]
	  = FUNC4 (param, (size_t) (params_list - param));
      else
	{
	  switch (param[1])
	    {
	    case 'g':
	    case 'O':
	    case 'S':
	    case 'c':
	      break;		/* Don't copy these.  */
	    case 'o':
	      while (FUNC0 ((const unsigned char)*params_list))
		params_list++;
	      while (*params_list
		     && !FUNC0 ((const unsigned char)*params_list))
		params_list++;
	      break;
	    default:
	      temp_params[param_count++]
		= FUNC4 (param, (size_t) (params_list - param));
	    }
	}
      if (!*params_list)
	break;
    }
  temp_params[param_count++] = "-aux-info";

  /* Leave room for the aux-info file name argument.  */
  aux_info_file_name_index = param_count;
  temp_params[param_count++] = NULL;

  temp_params[param_count++] = "-S";
  temp_params[param_count++] = "-o";

  if ((FUNC6 (HOST_BIT_BUCKET, &st) == 0)
      && (!FUNC1 (st.st_mode))
      && (FUNC2 (HOST_BIT_BUCKET, W_OK) == 0))
    temp_params[param_count++] = HOST_BIT_BUCKET;
  else
    /* FIXME: This is hardly likely to be right, if HOST_BIT_BUCKET is not
       writable.  But until this is rejigged to use make_temp_file(), this
       is the best we can do.  */
    temp_params[param_count++] = "/dev/null";

  /* Leave room for the input file name argument.  */
  input_file_name_index = param_count;
  temp_params[param_count++] = NULL;
  /* Terminate the list.  */
  temp_params[param_count++] = NULL;

  /* Make a copy of the compile_params in heap space.  */

  compile_params = FUNC8 (sizeof (char *) * (param_count+1));
  FUNC5 (compile_params, temp_params, sizeof (char *) * param_count);
}