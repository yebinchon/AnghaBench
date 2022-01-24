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
struct o2nm_cluster {int /*<<< orphan*/  cl_reconnect_delay_ms; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC1(
	struct o2nm_cluster *cluster, const char *page, size_t count)
{
	return FUNC0(page, count,
	                               &cluster->cl_reconnect_delay_ms);
}