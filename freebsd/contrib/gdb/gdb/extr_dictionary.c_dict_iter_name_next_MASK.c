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
struct symbol {int dummy; } ;
struct dict_iterator {int dummy; } ;
struct TYPE_2__ {struct symbol* (* iter_name_next ) (char const*,struct dict_iterator*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dict_iterator*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC2 (char const*,struct dict_iterator*) ; 

struct symbol *
FUNC3 (const char *name, struct dict_iterator *iterator)
{
  return (FUNC1 (FUNC0 (iterator)))
    ->iter_name_next (name, iterator);
}