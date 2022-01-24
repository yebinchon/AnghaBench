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
struct symbol {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
#define  LOC_CONST 129 
#define  LOC_LABEL 128 
 int FUNC0 (struct symbol*) ; 
 struct type* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 struct value* FUNC4 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC5 (struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC6 (struct symbol *var)
{
  struct type *type = FUNC1 (var);

  switch (FUNC0 (var))
    {
    case LOC_CONST:
      return FUNC4 (type, (LONGEST) FUNC2 (var));

    case LOC_LABEL:
      return FUNC5 (type, (CORE_ADDR) FUNC3 (var));

    default:
      return 0;
    }
}