#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct loop {int num; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv_ca {int dummy; } ;
typedef  TYPE_2__* edge ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {TYPE_4__* src; TYPE_1__* dest; } ;
struct TYPE_5__ {int index; } ;

/* Variables and functions */
 scalar_t__ MAX_CONSIDERED_USES ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,struct iv_ca*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC4 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivopts_data*) ; 
 struct iv_ca* FUNC7 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct iv_ca**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_2__* FUNC17 (struct loop*) ; 

__attribute__((used)) static bool
FUNC18 (struct ivopts_data *data, struct loop *loop)
{
  bool changed = false;
  struct iv_ca *iv_ca;
  edge exit;

  data->current_loop = loop;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC8 (dump_file, "Processing loop %d\n", loop->num);
      
      exit = FUNC17 (loop);
      if (exit)
	{
	  FUNC8 (dump_file, "  single exit %d -> %d, exit condition ",
		   exit->src->index, exit->dest->index);
	  FUNC13 (dump_file, FUNC11 (exit->src), TDF_SLIM);
	  FUNC8 (dump_file, "\n");
	}

      FUNC8 (dump_file, "\n");
    }

  /* For each ssa name determines whether it behaves as an induction variable
     in some loop.  */
  if (!FUNC4 (data))
    goto finish;

  /* Finds interesting uses (item 1).  */
  FUNC5 (data);
  if (FUNC12 (data) > MAX_CONSIDERED_USES)
    goto finish;

  /* Finds candidates for the induction variables (item 2).  */
  FUNC6 (data);

  /* Calculates the costs (item 3, part 1).  */
  FUNC3 (data);
  FUNC1 (data);
  FUNC2 (data);

  /* Find the optimal set of induction variables (item 3, part 2).  */
  iv_ca = FUNC7 (data);
  if (!iv_ca)
    goto finish;
  changed = true;

  /* Create the new induction variables (item 4, part 1).  */
  FUNC0 (data, iv_ca);
  FUNC10 (&iv_ca);
  
  /* Rewrite the uses (item 4, part 2).  */
  FUNC15 (data);

  /* Remove the ivs that are unused after rewriting.  */
  FUNC14 (data);

  /* We have changed the structure of induction variables; it might happen
     that definitions in the scev database refer to some of them that were
     eliminated.  */
  FUNC16 ();

finish:
  FUNC9 (data);

  return changed;
}