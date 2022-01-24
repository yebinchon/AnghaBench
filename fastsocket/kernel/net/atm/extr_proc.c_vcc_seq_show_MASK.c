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
struct vcc_state {int /*<<< orphan*/  sk; } ;
struct seq_file {struct vcc_state* private; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 struct atm_vcc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct atm_vcc*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	if (v == SEQ_START_TOKEN) {
		FUNC1(seq, sizeof(void *) == 4 ? "%-8s%s" : "%-16s%s",
			"Address ", "Itf VPI VCI   Fam Flags Reply "
			"Send buffer     Recv buffer      [refcnt]\n");
	} else {
		struct vcc_state *state = seq->private;
		struct atm_vcc *vcc = FUNC0(state->sk);

		FUNC2(seq, vcc);
	}
	return 0;
}