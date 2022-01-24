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
struct regulatory_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  last_request ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct regulatory_request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_mutex ; 

__attribute__((used)) static struct regulatory_request *FUNC2(void)
{
	return FUNC1(last_request,
				     FUNC0(&reg_mutex));
}