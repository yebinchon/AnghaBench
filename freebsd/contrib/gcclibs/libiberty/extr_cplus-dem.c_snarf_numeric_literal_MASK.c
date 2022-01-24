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
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 char* char_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC2 (const char **args, string *arg)
{
  if (**args == '-')
    {
      char_str[0] = '-';
      FUNC1 (arg, char_str);
      (*args)++;
    }
  else if (**args == '+')
    (*args)++;

  if (!FUNC0 ((unsigned char)**args))
    return 0;

  while (FUNC0 ((unsigned char)**args))
    {
      char_str[0] = **args;
      FUNC1 (arg, char_str);
      (*args)++;
    }

  return 1;
}