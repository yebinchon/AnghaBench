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

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char* const,char*,char* const,...) ; 
 int /*<<< orphan*/  data_type ; 
 char* FUNC2 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC4 (const char *param)
{
  char *const type_or_decl = FUNC0 (param);
  char *p = type_or_decl;
  char *qualifiers_then_data_type;
  char saved;

  /* Skip as many leading const's or volatile's as there are.  */

  for (;;)
    {
      if (!FUNC3 (p, "volatile ", 9))
	{
	  p += 9;
	  continue;
	}
      if (!FUNC3 (p, "const ", 6))
	{
	  p += 6;
	  continue;
	}
      break;
    }

  /* p now points to the place where we can insert the data type.  We have to
     add a blank after the data-type of course.  */

  if (p == type_or_decl)
    return FUNC1 (data_type, " ", type_or_decl, NULL);

  saved = *p;
  *p = '\0';
  qualifiers_then_data_type = FUNC1 (type_or_decl, data_type, NULL);
  *p = saved;
  return FUNC2 (qualifiers_then_data_type,
		   qualifiers_then_data_type, " ", p, NULL);
}