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
struct net_device {int dummy; } ;
struct ipt_clusterip_tgt_info {int /*<<< orphan*/  hash_initval; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  num_total_nodes; int /*<<< orphan*/  clustermac; } ;
struct clusterip_config {int /*<<< orphan*/  list; int /*<<< orphan*/  pde; int /*<<< orphan*/  entries; int /*<<< orphan*/  refcount; int /*<<< orphan*/  hash_initval; int /*<<< orphan*/  hash_mode; int /*<<< orphan*/  num_total_nodes; int /*<<< orphan*/  clustermac; int /*<<< orphan*/  clusterip; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clusterip_config*,struct ipt_clusterip_tgt_info const*) ; 
 int /*<<< orphan*/  clusterip_configs ; 
 int /*<<< orphan*/  clusterip_lock ; 
 int /*<<< orphan*/  clusterip_proc_fops ; 
 int /*<<< orphan*/  clusterip_procdir ; 
 int /*<<< orphan*/  FUNC2 (struct clusterip_config*) ; 
 struct clusterip_config* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct clusterip_config*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct clusterip_config *
FUNC10(const struct ipt_clusterip_tgt_info *i, __be32 ip,
			struct net_device *dev)
{
	struct clusterip_config *c;

	c = FUNC3(sizeof(*c), GFP_ATOMIC);
	if (!c)
		return NULL;

	c->dev = dev;
	c->clusterip = ip;
	FUNC5(&c->clustermac, &i->clustermac, ETH_ALEN);
	c->num_total_nodes = i->num_total_nodes;
	FUNC1(c, i);
	c->hash_mode = i->hash_mode;
	c->hash_initval = i->hash_initval;
	FUNC0(&c->refcount, 1);
	FUNC0(&c->entries, 1);

#ifdef CONFIG_PROC_FS
	{
		char buffer[16];

		/* create proc dir entry */
		sprintf(buffer, "%pI4", &ip);
		c->pde = proc_create_data(buffer, S_IWUSR|S_IRUSR,
					  clusterip_procdir,
					  &clusterip_proc_fops, c);
		if (!c->pde) {
			kfree(c);
			return NULL;
		}
	}
#endif

	FUNC8(&clusterip_lock);
	FUNC4(&c->list, &clusterip_configs);
	FUNC9(&clusterip_lock);

	return c;
}