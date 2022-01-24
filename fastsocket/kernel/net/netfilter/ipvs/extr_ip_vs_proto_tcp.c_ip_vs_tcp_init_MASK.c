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
struct ip_vs_protocol {int /*<<< orphan*/  timeout_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_apps ; 
 int /*<<< orphan*/  tcp_timeouts ; 

__attribute__((used)) static void FUNC1(struct ip_vs_protocol *pp)
{
	FUNC0(tcp_apps);
	pp->timeout_table = tcp_timeouts;
}