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
struct dictionary {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct dictionary*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dictionary*) ; 
 int /*<<< orphan*/  FUNC1 (struct dictionary*) ; 

void
FUNC2 (struct dictionary *dict)
{
  (FUNC0 (dict))->free (dict);
}