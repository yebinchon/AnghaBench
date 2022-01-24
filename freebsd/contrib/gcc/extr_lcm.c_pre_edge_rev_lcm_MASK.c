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
struct edge_list {int dummy; } ;
typedef  int /*<<< orphan*/  sbitmap ;

/* Variables and functions */
 int FUNC0 (struct edge_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edge_list*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct edge_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct edge_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct edge_list* FUNC6 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int last_basic_block ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct edge_list*) ; 
 int /*<<< orphan*/ * FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct edge_list*) ; 

struct edge_list *
FUNC14 (int n_exprs, sbitmap *transp,
		  sbitmap *st_avloc, sbitmap *st_antloc, sbitmap *kill,
		  sbitmap **insert, sbitmap **delete)
{
  sbitmap *st_antin, *st_antout;
  sbitmap *st_avout, *st_avin, *farthest;
  sbitmap *nearer, *nearerout;
  struct edge_list *edge_list;
  int num_edges;

  edge_list = FUNC6 ();
  num_edges = FUNC0 (edge_list);

  st_antin = FUNC10 (last_basic_block, n_exprs);
  st_antout = FUNC10 (last_basic_block, n_exprs);
  FUNC12 (st_antin, last_basic_block);
  FUNC12 (st_antout, last_basic_block);
  FUNC1 (st_antloc, transp, st_antin, st_antout);

  /* Compute global anticipatability.  */
  st_avout = FUNC10 (last_basic_block, n_exprs);
  st_avin = FUNC10 (last_basic_block, n_exprs);
  FUNC2 (st_avloc, kill, st_avout, st_avin);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      fprintf (dump_file, "Edge List:\n");
      verify_edge_list (dump_file, edge_list);
      print_edge_list (dump_file, edge_list);
      dump_sbitmap_vector (dump_file, "transp", "", transp, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_avloc", "", st_avloc, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_antloc", "", st_antloc, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_antin", "", st_antin, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_antout", "", st_antout, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_kill", "", kill, last_basic_block);
    }
#endif

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      dump_sbitmap_vector (dump_file, "st_avout", "", st_avout, last_basic_block);
      dump_sbitmap_vector (dump_file, "st_avin", "", st_avin, last_basic_block);
    }
#endif

  /* Compute farthestness.  */
  farthest = FUNC10 (num_edges, n_exprs);
  FUNC3 (edge_list, n_exprs, st_avout, st_avin, st_antin,
		    kill, farthest);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    dump_sbitmap_vector (dump_file, "farthest", "", farthest, num_edges);
#endif

  FUNC11 (st_antin);
  FUNC11 (st_antout);

  FUNC11 (st_avin);
  FUNC11 (st_avout);

  nearer = FUNC10 (num_edges, n_exprs);

  /* Allocate an extra element for the entry block.  */
  nearerout = FUNC10 (last_basic_block + 1, n_exprs);
  FUNC4 (edge_list, farthest, st_avloc, nearer, nearerout);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      dump_sbitmap_vector (dump_file, "nearerout", "", nearerout,
			   last_basic_block + 1);
      dump_sbitmap_vector (dump_file, "nearer", "", nearer, num_edges);
    }
#endif

  FUNC11 (farthest);

  *insert = FUNC10 (num_edges, n_exprs);
  *delete = FUNC10 (last_basic_block, n_exprs);
  FUNC5 (edge_list, st_avloc, nearer, nearerout,
			     *insert, *delete);

  FUNC11 (nearerout);
  FUNC11 (nearer);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      dump_sbitmap_vector (dump_file, "pre_insert_map", "", *insert, num_edges);
      dump_sbitmap_vector (dump_file, "pre_delete_map", "", *delete,
			   last_basic_block);
    }
#endif
  return edge_list;
}