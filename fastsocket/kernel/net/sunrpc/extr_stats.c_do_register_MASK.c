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
struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct proc_dir_entry* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_operations const*,void*) ; 
 int /*<<< orphan*/  proc_net_rpc ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline struct proc_dir_entry *
FUNC3(const char *name, void *data, const struct file_operations *fops)
{
	FUNC2();
	FUNC0("RPC:       registering /proc/net/rpc/%s\n", name);

	return FUNC1(name, 0, proc_net_rpc, fops, data);
}