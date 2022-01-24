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
typedef  int /*<<< orphan*/  tree ;
struct list_proxy {scalar_t__ value; scalar_t__ purpose; scalar_t__ chain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (const void* entry, const void* data)
{
  tree t = (tree) entry;
  struct list_proxy *proxy = (struct list_proxy *) data;

  return (FUNC2 (t) == proxy->value
	  && FUNC1 (t) == proxy->purpose
	  && FUNC0 (t) == proxy->chain);
}