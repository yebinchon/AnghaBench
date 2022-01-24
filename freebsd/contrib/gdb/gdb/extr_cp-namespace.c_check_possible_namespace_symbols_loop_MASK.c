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
struct objfile {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,struct objfile*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2 (const char *name, int len,
				       struct objfile *objfile)
{
  if (name[len] == ':')
    {
      int done;
      int next_len = len + 2;

      next_len += FUNC1 (name + next_len);
      done = FUNC2 (name, next_len,
						    objfile);

      if (!done)
	done = FUNC0 (name, len, objfile);

      return done;
    }
  else
    return 0;
}