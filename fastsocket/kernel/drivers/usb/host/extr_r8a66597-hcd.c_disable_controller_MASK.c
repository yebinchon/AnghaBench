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
struct r8a66597 {int max_root_hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTENB0 ; 
 int /*<<< orphan*/  INTSTS0 ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597)
{
	int port;

	FUNC2(r8a66597, 0, INTENB0);
	FUNC2(r8a66597, 0, INTSTS0);

	for (port = 0; port < r8a66597->max_root_hub; port++)
		FUNC1(r8a66597, port);

	FUNC0(r8a66597);
}