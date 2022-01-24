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
struct rclex_keywords {int tok; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int STRING ; 
 struct rclex_keywords* keywds ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC2 (const char *key)
{
  if (key && FUNC0 (key[0]))
    {
      const struct rclex_keywords *kw = &keywds[0];

      do
        {
	  if (! FUNC1 (kw->name, key))
	    return kw->tok;
	  ++kw;
        }
      while (kw->name != NULL);
    }
  return STRING;
}