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
struct mesh_table {void* known_gates; void* mean_chain_len; int /*<<< orphan*/ * copy_node; int /*<<< orphan*/ * free_node; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  INIT_PATHS_SIZE_ORDER ; 
 void* MEAN_CHAIN_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mesh_table*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesh_path_node_copy ; 
 int /*<<< orphan*/  mesh_path_node_free ; 
 int /*<<< orphan*/  mesh_paths ; 
 struct mesh_table* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mesh_table*,int) ; 
 int /*<<< orphan*/  mpp_paths ; 

int FUNC5(void)
{
	struct mesh_table *tbl_path, *tbl_mpp;
	int ret;

	tbl_path = FUNC3(INIT_PATHS_SIZE_ORDER);
	if (!tbl_path)
		return -ENOMEM;
	tbl_path->free_node = &mesh_path_node_free;
	tbl_path->copy_node = &mesh_path_node_copy;
	tbl_path->mean_chain_len = MEAN_CHAIN_LEN;
	tbl_path->known_gates = FUNC2(sizeof(struct hlist_head), GFP_ATOMIC);
	if (!tbl_path->known_gates) {
		ret = -ENOMEM;
		goto free_path;
	}
	FUNC0(tbl_path->known_gates);


	tbl_mpp = FUNC3(INIT_PATHS_SIZE_ORDER);
	if (!tbl_mpp) {
		ret = -ENOMEM;
		goto free_path;
	}
	tbl_mpp->free_node = &mesh_path_node_free;
	tbl_mpp->copy_node = &mesh_path_node_copy;
	tbl_mpp->mean_chain_len = MEAN_CHAIN_LEN;
	tbl_mpp->known_gates = FUNC2(sizeof(struct hlist_head), GFP_ATOMIC);
	if (!tbl_mpp->known_gates) {
		ret = -ENOMEM;
		goto free_mpp;
	}
	FUNC0(tbl_mpp->known_gates);

	/* Need no locking since this is during init */
	FUNC1(mesh_paths, tbl_path);
	FUNC1(mpp_paths, tbl_mpp);

	return 0;

free_mpp:
	FUNC4(tbl_mpp, true);
free_path:
	FUNC4(tbl_path, true);
	return ret;
}