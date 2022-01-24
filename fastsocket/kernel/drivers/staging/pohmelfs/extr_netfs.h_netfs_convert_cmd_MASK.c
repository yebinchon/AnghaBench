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
struct netfs_cmd {int /*<<< orphan*/  size; void* cpad; void* csize; void* ext; void* cmd; void* iv; void* start; void* id; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(struct netfs_cmd *cmd)
{
	cmd->id = FUNC2(cmd->id);
	cmd->start = FUNC2(cmd->start);
	cmd->iv = FUNC2(cmd->iv);
	cmd->cmd = FUNC0(cmd->cmd);
	cmd->ext = FUNC0(cmd->ext);
	cmd->csize = FUNC0(cmd->csize);
	cmd->cpad = FUNC0(cmd->cpad);
	cmd->size = FUNC1(cmd->size);
}