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
typedef  enum dtor_kinds { ____Placeholder_dtor_kinds } dtor_kinds ;
struct TYPE_2__ {int (* is_destructor_name ) (char const*) ;} ;

/* Variables and functions */
 TYPE_1__ current_cp_abi ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 

enum dtor_kinds
FUNC2 (const char *name)
{
  if ((current_cp_abi.is_destructor_name) == NULL)
    FUNC0 ("ABI doesn't define required function is_destructor_name");
  return (*current_cp_abi.is_destructor_name) (name);
}