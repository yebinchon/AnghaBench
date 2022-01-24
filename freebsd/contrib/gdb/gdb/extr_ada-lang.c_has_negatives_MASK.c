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
struct type {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_INT 129 
#define  TYPE_CODE_RANGE 128 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 

__attribute__((used)) static int
FUNC3 (struct type *type)
{
  switch (FUNC0 (type))
    {
    default:
      return 0;
    case TYPE_CODE_INT:
      return !FUNC2 (type);
    case TYPE_CODE_RANGE:
      return FUNC1 (type) < 0;
    }
}