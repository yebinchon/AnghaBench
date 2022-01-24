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
struct ima_template_data {int* digest; int* file_name; } ;
typedef  enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;

/* Variables and functions */
 int IMA_DIGEST_SIZE ; 
#define  IMA_SHOW_ASCII 129 
#define  IMA_SHOW_BINARY 128 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int*) ; 
 int FUNC3 (int*) ; 

void FUNC4(struct seq_file *m, void *e, enum ima_show_type show)
{
	struct ima_template_data *entry = e;
	int namelen;

	switch (show) {
	case IMA_SHOW_ASCII:
		FUNC0(m, entry->digest);
		FUNC2(m, " %s\n", entry->file_name);
		break;
	case IMA_SHOW_BINARY:
		FUNC1(m, entry->digest, IMA_DIGEST_SIZE);

		namelen = FUNC3(entry->file_name);
		FUNC1(m, &namelen, sizeof namelen);
		FUNC1(m, entry->file_name, namelen);
	default:
		break;
	}
}