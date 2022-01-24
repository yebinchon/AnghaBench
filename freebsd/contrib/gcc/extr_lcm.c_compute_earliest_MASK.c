#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct edge_list {int dummy; } ;
typedef  int /*<<< orphan*/  sbitmap ;
typedef  TYPE_1__* basic_block ;
struct TYPE_6__ {size_t index; } ;

/* Variables and functions */
 TYPE_1__* ENTRY_BLOCK_PTR ; 
 TYPE_1__* EXIT_BLOCK_PTR ; 
 TYPE_1__* FUNC0 (struct edge_list*,int) ; 
 TYPE_1__* FUNC1 (struct edge_list*,int) ; 
 int FUNC2 (struct edge_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct edge_list *edge_list, int n_exprs, sbitmap *antin,
		  sbitmap *antout, sbitmap *avout, sbitmap *kill,
		  sbitmap *earliest)
{
  sbitmap difference, temp_bitmap;
  int x, num_edges;
  basic_block pred, succ;

  num_edges = FUNC2 (edge_list);

  difference = FUNC4 (n_exprs);
  temp_bitmap = FUNC4 (n_exprs);

  for (x = 0; x < num_edges; x++)
    {
      pred = FUNC0 (edge_list, x);
      succ = FUNC1 (edge_list, x);
      if (pred == ENTRY_BLOCK_PTR)
	FUNC5 (earliest[x], antin[succ->index]);
      else
	{
	  if (succ == EXIT_BLOCK_PTR)
	    FUNC9 (earliest[x]);
	  else
	    {
	      FUNC6 (difference, antin[succ->index],
				  avout[pred->index]);
	      FUNC8 (temp_bitmap, antout[pred->index]);
	      FUNC3 (earliest[x], difference,
				    kill[pred->index], temp_bitmap);
	    }
	}
    }

  FUNC7 (temp_bitmap);
  FUNC7 (difference);
}