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
#define  TYPE_CODE_ENUM 131 
#define  TYPE_CODE_FLT 130 
#define  TYPE_CODE_INT 129 
#define  TYPE_CODE_RANGE 128 

__attribute__((used)) static int
FUNC1 (struct type *type)
{
  if (type == NULL)
    return 0;
  else
    {
      switch (FUNC0 (type))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_ENUM:
	case TYPE_CODE_FLT:
	  return 1;
	default:
	  return 0;
	}
    }
}