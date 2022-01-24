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
struct virtual_node {int vn_nr_item; struct virtual_item* vn_vi; } ;
struct virtual_item {int vi_item_len; scalar_t__ vi_index; int /*<<< orphan*/  vi_ih; } ;
struct tree_balance {scalar_t__* insert_size; int /*<<< orphan*/  tb_sb; int /*<<< orphan*/  tb_path; struct virtual_node* tb_vn; } ;

/* Variables and functions */
 int DC_SIZE ; 
 int IH_SIZE ; 
 int KEY_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int M_INSERT ; 
 int M_PASTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ TYPE_DIRENTRY ; 
 scalar_t__ TYPE_INDIRECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct virtual_item*,int,int,int) ; 
 scalar_t__ FUNC5 (struct virtual_item*,int,int) ; 
 short FUNC6 (struct virtual_item*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC8(int mode, struct tree_balance *tb, int h,
		       int from, int from_bytes,
		       int to, int to_bytes, short *snum012, int flow)
{
	int i;
	int cur_free;
	//    int bytes;
	int units;
	struct virtual_node *vn = tb->tb_vn;
	//    struct virtual_item * vi;

	int total_node_size, max_node_size, current_item_size;
	int needed_nodes;
	int start_item,		/* position of item we start filling node from */
	 end_item,		/* position of item we finish filling node by */
	 start_bytes,		/* number of first bytes (entries for directory) of start_item-th item
				   we do not include into node that is being filled */
	 end_bytes;		/* number of last bytes (entries for directory) of end_item-th item
				   we do node include into node that is being filled */
	int split_item_positions[2];	/* these are positions in virtual item of
					   items, that are split between S[0] and
					   S1new and S1new and S2new */

	split_item_positions[0] = -1;
	split_item_positions[1] = -1;

	/* We only create additional nodes if we are in insert or paste mode
	   or we are in replace mode at the internal level. If h is 0 and
	   the mode is M_REPLACE then in fix_nodes we change the mode to
	   paste or insert before we get here in the code.  */
	FUNC2(tb->insert_size[h] < 0 || (mode != M_INSERT && mode != M_PASTE),
	       "vs-8100: insert_size < 0 in overflow");

	max_node_size = FUNC0(FUNC1(tb->tb_path, h));

	/* snum012 [0-2] - number of items, that lay
	   to S[0], first new node and second new node */
	snum012[3] = -1;	/* s1bytes */
	snum012[4] = -1;	/* s2bytes */

	/* internal level */
	if (h > 0) {
		i = ((to - from) * (KEY_SIZE + DC_SIZE) + DC_SIZE);
		if (i == max_node_size)
			return 1;
		return (i / max_node_size + 1);
	}

	/* leaf level */
	needed_nodes = 1;
	total_node_size = 0;
	cur_free = max_node_size;

	// start from 'from'-th item
	start_item = from;
	// skip its first 'start_bytes' units
	start_bytes = ((from_bytes != -1) ? from_bytes : 0);

	// last included item is the 'end_item'-th one
	end_item = vn->vn_nr_item - to - 1;
	// do not count last 'end_bytes' units of 'end_item'-th item
	end_bytes = (to_bytes != -1) ? to_bytes : 0;

	/* go through all item beginning from the start_item-th item and ending by
	   the end_item-th item. Do not count first 'start_bytes' units of
	   'start_item'-th item and last 'end_bytes' of 'end_item'-th item */

	for (i = start_item; i <= end_item; i++) {
		struct virtual_item *vi = vn->vn_vi + i;
		int skip_from_end = ((i == end_item) ? end_bytes : 0);

		FUNC2(needed_nodes > 3, "vs-8105: too many nodes are needed");

		/* get size of current item */
		current_item_size = vi->vi_item_len;

		/* do not take in calculation head part (from_bytes) of from-th item */
		current_item_size -=
		    FUNC5(vi, 0 /*from start */ , start_bytes);

		/* do not take in calculation tail part of last item */
		current_item_size -=
		    FUNC5(vi, 1 /*from end */ , skip_from_end);

		/* if item fits into current node entierly */
		if (total_node_size + current_item_size <= max_node_size) {
			snum012[needed_nodes - 1]++;
			total_node_size += current_item_size;
			start_bytes = 0;
			continue;
		}

		if (current_item_size > max_node_size) {
			/* virtual item length is longer, than max size of item in
			   a node. It is impossible for direct item */
			FUNC2(FUNC3(vi->vi_ih),
			       "vs-8110: "
			       "direct item length is %d. It can not be longer than %d",
			       current_item_size, max_node_size);
			/* we will try to split it */
			flow = 1;
		}

		if (!flow) {
			/* as we do not split items, take new node and continue */
			needed_nodes++;
			i--;
			total_node_size = 0;
			continue;
		}
		// calculate number of item units which fit into node being
		// filled
		{
			int free_space;

			free_space = max_node_size - total_node_size - IH_SIZE;
			units =
			    FUNC4(vi, free_space, start_bytes,
					  skip_from_end);
			if (units == -1) {
				/* nothing fits into current node, take new node and continue */
				needed_nodes++, i--, total_node_size = 0;
				continue;
			}
		}

		/* something fits into the current node */
		//if (snum012[3] != -1 || needed_nodes != 1)
		//  reiserfs_panic (tb->tb_sb, "vs-8115: get_num_ver: too many nodes required");
		//snum012[needed_nodes - 1 + 3] = op_unit_num (vi) - start_bytes - units;
		start_bytes += units;
		snum012[needed_nodes - 1 + 3] = units;

		if (needed_nodes > 2)
			FUNC7(tb->tb_sb, "vs-8111",
					 "split_item_position is out of range");
		snum012[needed_nodes - 1]++;
		split_item_positions[needed_nodes - 1] = i;
		needed_nodes++;
		/* continue from the same item with start_bytes != -1 */
		start_item = i;
		i--;
		total_node_size = 0;
	}

	// sum012[4] (if it is not -1) contains number of units of which
	// are to be in S1new, snum012[3] - to be in S0. They are supposed
	// to be S1bytes and S2bytes correspondingly, so recalculate
	if (snum012[4] > 0) {
		int split_item_num;
		int bytes_to_r, bytes_to_l;
		int bytes_to_S1new;

		split_item_num = split_item_positions[1];
		bytes_to_l =
		    ((from == split_item_num
		      && from_bytes != -1) ? from_bytes : 0);
		bytes_to_r =
		    ((end_item == split_item_num
		      && end_bytes != -1) ? end_bytes : 0);
		bytes_to_S1new =
		    ((split_item_positions[0] ==
		      split_item_positions[1]) ? snum012[3] : 0);

		// s2bytes
		snum012[4] =
		    FUNC6(&vn->vn_vi[split_item_num]) - snum012[4] -
		    bytes_to_r - bytes_to_l - bytes_to_S1new;

		if (vn->vn_vi[split_item_num].vi_index != TYPE_DIRENTRY &&
		    vn->vn_vi[split_item_num].vi_index != TYPE_INDIRECT)
			FUNC7(tb->tb_sb, "vs-8115",
					 "not directory or indirect item");
	}

	/* now we know S2bytes, calculate S1bytes */
	if (snum012[3] > 0) {
		int split_item_num;
		int bytes_to_r, bytes_to_l;
		int bytes_to_S2new;

		split_item_num = split_item_positions[0];
		bytes_to_l =
		    ((from == split_item_num
		      && from_bytes != -1) ? from_bytes : 0);
		bytes_to_r =
		    ((end_item == split_item_num
		      && end_bytes != -1) ? end_bytes : 0);
		bytes_to_S2new =
		    ((split_item_positions[0] == split_item_positions[1]
		      && snum012[4] != -1) ? snum012[4] : 0);

		// s1bytes
		snum012[3] =
		    FUNC6(&vn->vn_vi[split_item_num]) - snum012[3] -
		    bytes_to_r - bytes_to_l - bytes_to_S2new;
	}

	return needed_nodes;
}