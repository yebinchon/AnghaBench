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
 int /*<<< orphan*/  FUNC4 (struct edge_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct edge_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct edge_list* FUNC6 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int last_basic_block ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct edge_list*) ; 
 int /*<<< orphan*/ * FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct edge_list*) ; 

struct edge_list *
FUNC13 (int n_exprs, sbitmap *transp,
	      sbitmap *avloc, sbitmap *antloc, sbitmap *kill,
	      sbitmap **insert, sbitmap **delete)
{
  sbitmap *antin, *antout, *earliest;
  sbitmap *avin, *avout;
  sbitmap *later, *laterin;
  struct edge_list *edge_list;
  int num_edges;

  edge_list = FUNC6 ();
  num_edges = FUNC0 (edge_list);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      fprintf (dump_file, "Edge List:\n");
      verify_edge_list (dump_file, edge_list);
      print_edge_list (dump_file, edge_list);
      dump_sbitmap_vector (dump_file, "transp", "", transp, last_basic_block);
      dump_sbitmap_vector (dump_file, "antloc", "", antloc, last_basic_block);
      dump_sbitmap_vector (dump_file, "avloc", "", avloc, last_basic_block);
      dump_sbitmap_vector (dump_file, "kill", "", kill, last_basic_block);
    }
#endif

  /* Compute global availability.  */
  avin = FUNC10 (last_basic_block, n_exprs);
  avout = FUNC10 (last_basic_block, n_exprs);
  FUNC2 (avloc, kill, avout, avin);
  FUNC11 (avin);

  /* Compute global anticipatability.  */
  antin = FUNC10 (last_basic_block, n_exprs);
  antout = FUNC10 (last_basic_block, n_exprs);
  FUNC1 (antloc, transp, antin, antout);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      dump_sbitmap_vector (dump_file, "antin", "", antin, last_basic_block);
      dump_sbitmap_vector (dump_file, "antout", "", antout, last_basic_block);
    }
#endif

  /* Compute earliestness.  */
  earliest = FUNC10 (num_edges, n_exprs);
  FUNC3 (edge_list, n_exprs, antin, antout, avout, kill, earliest);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    dump_sbitmap_vector (dump_file, "earliest", "", earliest, num_edges);
#endif

  FUNC11 (antout);
  FUNC11 (antin);
  FUNC11 (avout);

  later = FUNC10 (num_edges, n_exprs);

  /* Allocate an extra element for the exit block in the laterin vector.  */
  laterin = FUNC10 (last_basic_block + 1, n_exprs);
  FUNC5 (edge_list, earliest, antloc, later, laterin);

#ifdef LCM_DEBUG_INFO
  if (dump_file)
    {
      dump_sbitmap_vector (dump_file, "laterin", "", laterin, last_basic_block + 1);
      dump_sbitmap_vector (dump_file, "later", "", later, num_edges);
    }
#endif

  FUNC11 (earliest);

  *insert = FUNC10 (num_edges, n_exprs);
  *delete = FUNC10 (last_basic_block, n_exprs);
  FUNC4 (edge_list, antloc, later, laterin, *insert, *delete);

  FUNC11 (laterin);
  FUNC11 (later);

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