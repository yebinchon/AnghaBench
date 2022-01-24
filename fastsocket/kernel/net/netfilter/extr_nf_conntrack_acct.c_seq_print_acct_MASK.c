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
struct nf_conn_counter {scalar_t__ bytes; scalar_t__ packets; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 struct nf_conn_counter* FUNC0 (struct nf_conn const*) ; 
 unsigned int FUNC1 (struct seq_file*,char*,unsigned long long,unsigned long long) ; 

unsigned int
FUNC2(struct seq_file *s, const struct nf_conn *ct, int dir)
{
	struct nf_conn_counter *acct;

	acct = FUNC0(ct);
	if (!acct)
		return 0;

	return FUNC1(s, "packets=%llu bytes=%llu ",
			  (unsigned long long)acct[dir].packets,
			  (unsigned long long)acct[dir].bytes);
}