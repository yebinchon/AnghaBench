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
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr const*,struct sockaddr const*) ; 

__attribute__((used)) static int FUNC1(const struct sockaddr *sa1,
				const struct sockaddr *sa2)
{
	const struct sockaddr_in *sin1 = (const struct sockaddr_in *)sa1;
	const struct sockaddr_in *sin2 = (const struct sockaddr_in *)sa2;

	return FUNC0(sa1, sa2) &&
		(sin1->sin_port == sin2->sin_port);
}