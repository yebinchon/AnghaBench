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
struct mach_port_status {int /*<<< orphan*/  mps_msgcount; } ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_port_msgcount_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mach_port_status*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static mach_port_msgcount_t
FUNC2 (mach_port_t port)
{
  struct mach_port_status status;
  error_t err =
  FUNC0 (FUNC1 (), port, &status);

  if (err)
    return 0;
  else
    return status.mps_msgcount;
}