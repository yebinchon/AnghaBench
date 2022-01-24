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
struct ft_tport {int dummy; } ;
struct ft_sess {int /*<<< orphan*/  se_sess; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  prli_count; TYPE_1__ ids; TYPE_2__* local_port; } ;
struct TYPE_4__ {int /*<<< orphan*/ * prov; } ;

/* Variables and functions */
 size_t FC_TYPE_FCP ; 
 int /*<<< orphan*/  ft_lport_lock ; 
 struct ft_sess* FUNC0 (struct ft_tport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ft_sess*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ft_tport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fc_rport_priv *rdata)
{
	struct ft_sess *sess;
	struct ft_tport *tport;

	FUNC3(&ft_lport_lock);
	tport = FUNC5(rdata->local_port->prov[FC_TYPE_FCP],
					  FUNC2(&ft_lport_lock));

	if (!tport) {
		FUNC4(&ft_lport_lock);
		return;
	}
	sess = FUNC0(tport, rdata->ids.port_id);
	if (!sess) {
		FUNC4(&ft_lport_lock);
		return;
	}
	FUNC4(&ft_lport_lock);
	FUNC6(sess->se_sess);
	FUNC1(sess);		/* release from table */
	rdata->prli_count--;
	/* XXX TBD - clearing actions.  unit attn, see 4.10 */
}