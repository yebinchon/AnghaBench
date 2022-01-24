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
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct value* FUNC2 (char*,int /*<<< orphan*/ ) ; 

struct value *
FUNC3 (struct type *type)
{
  switch (FUNC0 (type))
    {
    case 'F':
      return FUNC2 ("DEBUG_STRING_F", 0);
    case 'D':
      return FUNC2 ("DEBUG_STRING_D", 0);
    case 'G':
      return FUNC2 ("DEBUG_STRING_G", 0);
    default:
      FUNC1 ("invalid VAX floating-point type");
    }
}