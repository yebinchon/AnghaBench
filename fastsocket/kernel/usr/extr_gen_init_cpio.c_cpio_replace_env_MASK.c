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
 int PATH_MAX ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(char *new_location)
{
       char expanded[PATH_MAX + 1];
       char env_var[PATH_MAX + 1];
       char *start;
       char *end;

       for (start = NULL; (start = FUNC4(new_location, "${")); ) {
               end = FUNC1(start, '}');
               if (start < end) {
                       *env_var = *expanded = '\0';
                       FUNC2(env_var, start + 2, end - start - 2);
                       FUNC2(expanded, new_location, start - new_location);
                       FUNC2(expanded, FUNC0(env_var), PATH_MAX);
                       FUNC2(expanded, end + 1, PATH_MAX);
                       FUNC3(new_location, expanded, PATH_MAX);
               } else
                       break;
       }

       return new_location;
}