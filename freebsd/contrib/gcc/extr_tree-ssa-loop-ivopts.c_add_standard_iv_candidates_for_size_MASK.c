#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct ivopts_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* type_for_size ) (unsigned int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 

__attribute__((used)) static void
FUNC3 (struct ivopts_data *data,
				     unsigned int size)
{
  tree type = lang_hooks.types.type_for_size (size, true);
  FUNC0 (data, FUNC1 (type, 0), FUNC1 (type, 1),
		 true, NULL);
}