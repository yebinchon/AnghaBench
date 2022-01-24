#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct gcov_iterator {int record; size_t type; size_t count; TYPE_2__* info; } ;
struct TYPE_8__ {int ident; int checksum; int* n_ctrs; } ;
struct TYPE_7__ {size_t offset; int /*<<< orphan*/  ctr_type; } ;
struct TYPE_6__ {int version; int stamp; TYPE_1__* counts; } ;
struct TYPE_5__ {int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 int EINVAL ; 
 int GCOV_DATA_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GCOV_TAG_FUNCTION ; 
#define  RECORD_COUNT 137 
#define  RECORD_COUNT_LEN 136 
#define  RECORD_COUNT_TAG 135 
#define  RECORD_FILE_MAGIC 134 
#define  RECORD_FUNCTION_CHECK 133 
#define  RECORD_FUNCTION_IDENT 132 
#define  RECORD_FUNCTION_TAG 131 
#define  RECORD_FUNCTON_TAG_LEN 130 
#define  RECORD_GCOV_VERSION 129 
#define  RECORD_TIME_STAMP 128 
 TYPE_4__* FUNC1 (struct gcov_iterator*) ; 
 TYPE_3__* FUNC2 (struct gcov_iterator*) ; 
 int FUNC3 (struct seq_file*,int) ; 
 int FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 

int FUNC5(struct gcov_iterator *iter, struct seq_file *seq)
{
	int rc = -EINVAL;

	switch (iter->record) {
	case RECORD_FILE_MAGIC:
		rc = FUNC3(seq, GCOV_DATA_MAGIC);
		break;
	case RECORD_GCOV_VERSION:
		rc = FUNC3(seq, iter->info->version);
		break;
	case RECORD_TIME_STAMP:
		rc = FUNC3(seq, iter->info->stamp);
		break;
	case RECORD_FUNCTION_TAG:
		rc = FUNC3(seq, GCOV_TAG_FUNCTION);
		break;
	case RECORD_FUNCTON_TAG_LEN:
		rc = FUNC3(seq, 2);
		break;
	case RECORD_FUNCTION_IDENT:
		rc = FUNC3(seq, FUNC1(iter)->ident);
		break;
	case RECORD_FUNCTION_CHECK:
		rc = FUNC3(seq, FUNC1(iter)->checksum);
		break;
	case RECORD_COUNT_TAG:
		rc = FUNC3(seq,
			FUNC0(FUNC2(iter)->ctr_type));
		break;
	case RECORD_COUNT_LEN:
		rc = FUNC3(seq,
				FUNC1(iter)->n_ctrs[iter->type] * 2);
		break;
	case RECORD_COUNT:
		rc = FUNC4(seq,
			iter->info->counts[iter->type].
				values[iter->count + FUNC2(iter)->offset]);
		break;
	}
	return rc;
}