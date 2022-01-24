#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ sctp; } ;
struct nf_conn {int /*<<< orphan*/  lock; TYPE_2__ proto; } ;
typedef  enum sctp_conntrack { ____Placeholder_sctp_conntrack } sctp_conntrack ;

/* Variables and functions */
 int /*<<< orphan*/ * sctp_conntrack_names ; 
 int FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, struct nf_conn *ct)
{
	enum sctp_conntrack state;

	FUNC1(&ct->lock);
	state = ct->proto.sctp.state;
	FUNC2(&ct->lock);

	return FUNC0(s, "%s ", sctp_conntrack_names[state]);
}