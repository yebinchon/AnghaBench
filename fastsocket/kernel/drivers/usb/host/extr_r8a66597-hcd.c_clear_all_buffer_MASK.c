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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ pipenum; } ;
struct r8a66597_pipe {int /*<<< orphan*/  pipectr; TYPE_1__ info; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLRM ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,struct r8a66597_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r8a66597 *r8a66597,
			     struct r8a66597_pipe *pipe)
{
	u16 tmp;

	if (!pipe || pipe->info.pipenum == 0)
		return;

	FUNC0(r8a66597, pipe);
	FUNC2(r8a66597, ACLRM, pipe->pipectr);
	tmp = FUNC3(r8a66597, pipe->pipectr);
	tmp = FUNC3(r8a66597, pipe->pipectr);
	tmp = FUNC3(r8a66597, pipe->pipectr);
	FUNC1(r8a66597, ACLRM, pipe->pipectr);
}