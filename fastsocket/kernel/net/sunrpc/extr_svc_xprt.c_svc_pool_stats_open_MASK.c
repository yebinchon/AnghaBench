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
struct svc_serv {int dummy; } ;
struct seq_file {struct svc_serv* private; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_pool_stats_seq_ops ; 

int FUNC1(struct svc_serv *serv, struct file *file)
{
	int err;

	err = FUNC0(file, &svc_pool_stats_seq_ops);
	if (!err)
		((struct seq_file *) file->private_data)->private = serv;
	return err;
}