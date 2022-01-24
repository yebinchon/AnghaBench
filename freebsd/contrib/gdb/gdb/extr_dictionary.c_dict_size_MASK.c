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
struct TYPE_2__ {int (* size ) (struct dictionary const*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dictionary const*) ; 
 int FUNC1 (struct dictionary const*) ; 

int
FUNC2 (const struct dictionary *dict)
{
  return (FUNC0 (dict))->size (dict);
}