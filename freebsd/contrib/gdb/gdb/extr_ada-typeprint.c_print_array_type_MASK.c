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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 int FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 int FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int) ; 
 struct type* FUNC8 (struct type*) ; 
 struct type* FUNC9 (struct type*,char*) ; 
 scalar_t__ FUNC10 (struct type*) ; 
 scalar_t__ FUNC11 (struct type*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17 (struct type *type, struct ui_file *stream, int show,
		  int level)
{
  int bitsize;
  int n_indices;

  bitsize = 0;
  FUNC13 (stream, "array (");

  n_indices = -1;
  if (show < 0)
    FUNC13 (stream, "...");
  else
    {
      if (FUNC10 (type))
	type = FUNC8 (type);
      if (FUNC11 (type))
	{
	  struct type *range_desc_type =
	    FUNC9 (type, "___XA");
	  struct type *arr_type;

	  bitsize = 0;
	  if (range_desc_type == NULL)
	    {
	      for (arr_type = type; FUNC0 (arr_type) == TYPE_CODE_ARRAY;
		   arr_type = FUNC5 (arr_type))
		{
		  if (arr_type != type)
		    FUNC13 (stream, ", ");
		  FUNC14 (FUNC3 (arr_type), stream);
		  if (FUNC1 (arr_type, 0) > 0)
		    bitsize = FUNC1 (arr_type, 0);
		}
	    }
	  else
	    {
	      int k;
	      n_indices = FUNC4 (range_desc_type);
	      for (k = 0, arr_type = type;
		   k < n_indices;
		   k += 1, arr_type = FUNC5 (arr_type))
		{
		  if (k > 0)
		    FUNC13 (stream, ", ");
		  FUNC15 (FUNC2
					  (range_desc_type, k), stream);
		  if (FUNC1 (arr_type, 0) > 0)
		    bitsize = FUNC1 (arr_type, 0);
		}
	    }
	}
      else
	{
	  int i, i0;
	  for (i = i0 = FUNC6 (type); i > 0; i -= 1)
	    FUNC13 (stream, "%s<>", i == i0 ? "" : ", ");
	}
    }

  FUNC13 (stream, ") of ");
  FUNC16 ("");
  FUNC12 (FUNC7 (type, n_indices), "", stream,
		  show == 0 ? 0 : show - 1, level + 1);
  if (bitsize > 0)
    FUNC13 (stream, " <packed: %d-bit elements>", bitsize);
}