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

/* Variables and functions */
 unsigned long HZ ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fscache_obj_instantiate_histogram ; 
 int /*<<< orphan*/ * fscache_objs_histogram ; 
 int /*<<< orphan*/ * fscache_ops_histogram ; 
 int /*<<< orphan*/ * fscache_retrieval_delay_histogram ; 
 int /*<<< orphan*/ * fscache_retrieval_histogram ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	unsigned long index;
	unsigned n[5], t;

	switch ((unsigned long) v) {
	case 1:
		FUNC2(m, "JIFS  SECS  OBJ INST  OP RUNS   OBJ RUNS "
			 " RETRV DLY RETRIEVLS\n");
		return 0;
	case 2:
		FUNC2(m, "===== ===== ========= ========= ========="
			 " ========= =========\n");
		return 0;
	default:
		index = (unsigned long) v - 3;
		n[0] = FUNC0(&fscache_obj_instantiate_histogram[index]);
		n[1] = FUNC0(&fscache_ops_histogram[index]);
		n[2] = FUNC0(&fscache_objs_histogram[index]);
		n[3] = FUNC0(&fscache_retrieval_delay_histogram[index]);
		n[4] = FUNC0(&fscache_retrieval_histogram[index]);
		if (!(n[0] | n[1] | n[2] | n[3] | n[4]))
			return 0;

		t = (index * 1000) / HZ;

		FUNC1(m, "%4lu  0.%03u %9u %9u %9u %9u %9u\n",
			   index, t, n[0], n[1], n[2], n[3], n[4]);
		return 0;
	}
}