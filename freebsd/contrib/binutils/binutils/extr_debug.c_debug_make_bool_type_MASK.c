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
struct debug_handle {int dummy; } ;
typedef  int /*<<< orphan*/  debug_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_BOOL ; 
 int /*<<< orphan*/  FUNC0 (struct debug_handle*,int /*<<< orphan*/ ,unsigned int) ; 

debug_type
FUNC1 (void *handle, unsigned int size)
{
  struct debug_handle *info = (struct debug_handle *) handle;

  return FUNC0 (info, DEBUG_KIND_BOOL, size);
}