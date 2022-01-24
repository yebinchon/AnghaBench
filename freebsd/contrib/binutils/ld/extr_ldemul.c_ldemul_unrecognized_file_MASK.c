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
typedef  int /*<<< orphan*/  lang_input_statement_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {int /*<<< orphan*/  (* unrecognized_file ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* ld_emulation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC1 (lang_input_statement_type *entry)
{
  if (ld_emulation->unrecognized_file)
    return (*ld_emulation->unrecognized_file) (entry);
  return FALSE;
}