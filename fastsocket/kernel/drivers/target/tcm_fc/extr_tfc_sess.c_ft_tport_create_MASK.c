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
struct ft_tport {int /*<<< orphan*/ * hash; struct ft_tpg* tpg; struct fc_lport* lport; } ;
struct ft_tpg {struct ft_tport* tport; } ;
struct fc_lport {int /*<<< orphan*/ * prov; } ;

/* Variables and functions */
 size_t FC_TYPE_FCP ; 
 int FT_SESS_HASH_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ft_tpg* FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  ft_lport_lock ; 
 struct ft_tport* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ft_tport*) ; 
 struct ft_tport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ft_tport *FUNC6(struct fc_lport *lport)
{
	struct ft_tpg *tpg;
	struct ft_tport *tport;
	int i;

	tport = FUNC5(lport->prov[FC_TYPE_FCP],
					  FUNC3(&ft_lport_lock));
	if (tport && tport->tpg)
		return tport;

	tpg = FUNC1(lport);
	if (!tpg)
		return NULL;

	if (tport) {
		tport->tpg = tpg;
		return tport;
	}

	tport = FUNC2(sizeof(*tport), GFP_KERNEL);
	if (!tport)
		return NULL;

	tport->lport = lport;
	tport->tpg = tpg;
	tpg->tport = tport;
	for (i = 0; i < FT_SESS_HASH_SIZE; i++)
		FUNC0(&tport->hash[i]);

	FUNC4(lport->prov[FC_TYPE_FCP], tport);
	return tport;
}