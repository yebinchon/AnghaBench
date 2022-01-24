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
struct net {int /*<<< orphan*/  proc_net; } ;
struct file_operations {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_operations const*) ; 

struct proc_dir_entry *FUNC1(struct net *net,
	const char *name, mode_t mode, const struct file_operations *fops)
{
	return FUNC0(name, mode, net->proc_net, fops);
}