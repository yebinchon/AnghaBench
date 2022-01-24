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
struct TYPE_2__ {int /*<<< orphan*/  commands; } ;
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* postCommands ; 

__attribute__((used)) static int
FUNC2(void *cmd, void *gn)
{
    cmd = FUNC1(NULL, (char *)cmd, (GNode *)gn, VARF_WANTRES);
    (void)FUNC0(postCommands->commands, cmd);
    return(0);
}