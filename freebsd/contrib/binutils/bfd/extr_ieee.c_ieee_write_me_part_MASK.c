#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* me_record; void* trailer_part; } ;
struct TYPE_13__ {TYPE_1__ r; } ;
struct TYPE_14__ {TYPE_2__ w; } ;
typedef  TYPE_3__ ieee_data_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_15__ {scalar_t__ start_address; } ;
typedef  TYPE_4__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  ieee_function_either_close_b_enum ; 
 int /*<<< orphan*/  ieee_function_either_open_b_enum ; 
 int /*<<< orphan*/  ieee_module_end_enum ; 
 int /*<<< orphan*/  ieee_value_starting_address_enum ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *abfd)
{
  ieee_data_type *ieee = FUNC0 (abfd);
  ieee->w.r.trailer_part = FUNC1 (abfd);
  if (abfd->start_address)
    {
      if (! FUNC2 (abfd, ieee_value_starting_address_enum)
	  || ! FUNC3 (abfd, ieee_function_either_open_b_enum)
	  || ! FUNC4 (abfd, abfd->start_address)
	  || ! FUNC3 (abfd, ieee_function_either_close_b_enum))
	return FALSE;
    }
  ieee->w.r.me_record = FUNC1 (abfd);
  if (! FUNC3 (abfd, ieee_module_end_enum))
    return FALSE;
  return TRUE;
}