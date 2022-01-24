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
typedef  int /*<<< orphan*/ * atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int error_on_flight ; 
 int /*<<< orphan*/  no_memory_error ; 
 int /*<<< orphan*/  no_memory_format ; 

atf_error_t
FUNC2(void)
{
    FUNC0(!error_on_flight);

    FUNC1(&no_memory_error, "no_memory", NULL, 0,
               no_memory_format);

    error_on_flight = true;
    return &no_memory_error;
}