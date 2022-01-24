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
struct seq_file {int dummy; } ;
struct ima_template_entry {int /*<<< orphan*/  template; int /*<<< orphan*/  template_name; int /*<<< orphan*/  digest; } ;
struct ima_template_data {int dummy; } ;
struct ima_queue_entry {struct ima_template_entry* entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IMA_MEASURE_PCR_IDX ; 
 int /*<<< orphan*/  IMA_SHOW_ASCII ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct ima_template_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	/* the list never shrinks, so we don't need a lock here */
	struct ima_queue_entry *qe = v;
	struct ima_template_entry *e;

	/* get entry */
	e = qe->entry;
	if (e == NULL)
		return -1;

	/* 1st: PCR used (config option) */
	FUNC2(m, "%2d ", CONFIG_IMA_MEASURE_PCR_IDX);

	/* 2nd: SHA1 template hash */
	FUNC0(m, e->digest);

	/* 3th:  template name */
	FUNC2(m, " %s ", e->template_name);

	/* 4th:  template specific data */
	FUNC1(m, (struct ima_template_data *)&e->template,
			  IMA_SHOW_ASCII);
	return 0;
}