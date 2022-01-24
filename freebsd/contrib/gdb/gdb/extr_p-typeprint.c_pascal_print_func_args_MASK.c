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
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (struct type *type, struct ui_file *stream)
{
  int i, len = FUNC1 (type);
  if (len)
    {
      FUNC2 (stream, "(");
    }
  for (i = 0; i < len; i++)
    {
      if (i > 0)
	{
	  FUNC3 (", ", stream);
	  FUNC5 ("    ");
	}
      /*  can we find if it is a var parameter ??
         if ( TYPE_FIELD(type, i) == )
         {
         fprintf_filtered (stream, "var ");
         } */
      FUNC4 (FUNC0 (type, i), ""	/* TYPE_FIELD_NAME seems invalid ! */
			 ,stream, -1, 0);
    }
  if (len)
    {
      FUNC2 (stream, ")");
    }
}