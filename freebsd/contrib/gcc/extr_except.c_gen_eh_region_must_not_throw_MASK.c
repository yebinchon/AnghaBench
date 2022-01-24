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
struct eh_region {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERT_MUST_NOT_THROW ; 
 struct eh_region* FUNC0 (int /*<<< orphan*/ ,struct eh_region*) ; 

struct eh_region *
FUNC1 (struct eh_region *outer)
{
  return FUNC0 (ERT_MUST_NOT_THROW, outer);
}