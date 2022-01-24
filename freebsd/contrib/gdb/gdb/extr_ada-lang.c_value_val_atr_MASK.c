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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 long FUNC1 (struct type*,long) ; 
 long FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 long FUNC7 (struct value*) ; 
 struct value* FUNC8 (struct type*,long) ; 

__attribute__((used)) static struct value *
FUNC9 (struct type *type, struct value *arg)
{
  if (!FUNC4 (type))
    FUNC5 ("'VAL only defined on discrete types");
  if (!FUNC6 (FUNC3 (arg)))
    FUNC5 ("'VAL requires integral argument");

  if (FUNC0 (type) == TYPE_CODE_ENUM)
    {
      long pos = FUNC7 (arg);
      if (pos < 0 || pos >= FUNC2 (type))
	FUNC5 ("argument to 'VAL out of range");
      return FUNC8 (type, FUNC1 (type, pos));
    }
  else
    return FUNC8 (type, FUNC7 (arg));
}