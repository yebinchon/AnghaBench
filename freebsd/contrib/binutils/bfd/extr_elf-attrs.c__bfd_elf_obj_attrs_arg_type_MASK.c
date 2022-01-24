#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int (* obj_attrs_arg_type ) (int) ;} ;

/* Variables and functions */
#define  OBJ_ATTR_GNU 129 
#define  OBJ_ATTR_PROC 128 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

int
FUNC4 (bfd *abfd, int vendor, int tag)
{
  switch (vendor)
    {
    case OBJ_ATTR_PROC:
      return FUNC1 (abfd)->obj_attrs_arg_type (tag);
      break;
    case OBJ_ATTR_GNU:
      return FUNC2 (tag);
      break;
    default:
      FUNC0 ();
    }
}