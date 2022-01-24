#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct r8a66597_device {int dummy; } ;
struct r8a66597 {TYPE_1__* root_hub; } ;
struct TYPE_2__ {struct r8a66597_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,struct r8a66597_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,struct r8a66597_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597, int port)
{
	struct r8a66597_device *dev = r8a66597->root_hub[port].dev;

	FUNC0(r8a66597, dev);
	FUNC1(r8a66597, dev);

	FUNC2(r8a66597, port, 0);
}