#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct opt_info {int dummy; } ;
struct niter_desc {unsigned int niter; int /*<<< orphan*/  noloop_assumptions; int /*<<< orphan*/  niter_expr; scalar_t__ const_iter; scalar_t__ simple_p; } ;
struct loops {int dummy; } ;
struct TYPE_2__ {unsigned int times; } ;
struct loop {TYPE_1__ lpt_decision; } ;
typedef  int /*<<< orphan*/  sbitmap ;

/* Variables and functions */
 int DLTHE_FLAG_UPDATE_FREQ ; 
 int DLTHE_RECORD_COPY_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 struct opt_info* FUNC1 (struct loop*) ; 
 int /*<<< orphan*/  FUNC2 (struct opt_info*,unsigned int,int,int) ; 
 scalar_t__ dump_file ; 
 int FUNC3 (struct loop*,int /*<<< orphan*/ ,struct loops*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ flag_split_ivs_in_unroller ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct opt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct niter_desc* FUNC9 (struct loop*) ; 
 int /*<<< orphan*/  FUNC10 (struct loop*) ; 
 int /*<<< orphan*/  FUNC11 (struct opt_info*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (struct loops *loops, struct loop *loop)
{
  sbitmap wont_exit;
  unsigned npeel = loop->lpt_decision.times;
  struct niter_desc *desc = FUNC9 (loop);
  struct opt_info *opt_info = NULL;
  bool ok;
  
  if (flag_split_ivs_in_unroller && npeel > 1)
    opt_info = FUNC1 (loop);
  
  wont_exit = FUNC12 (npeel + 1);
  FUNC13 (wont_exit);
  
  FUNC11 (opt_info);
  
  ok = FUNC3 (loop, FUNC10 (loop),
				      loops, npeel, wont_exit,
				      NULL, NULL,
				      NULL, DLTHE_FLAG_UPDATE_FREQ
				      | (opt_info
					 ? DLTHE_RECORD_COPY_NUMBER
					   : 0));
  FUNC8 (ok);

  FUNC5 (wont_exit);
  
  if (opt_info)
    {
      FUNC2 (opt_info, npeel, false, false);
      FUNC6 (opt_info);
    }

  if (desc->simple_p)
    {
      if (desc->const_iter)
	{
	  desc->niter -= npeel;
	  desc->niter_expr = FUNC0 (desc->niter);
	  desc->noloop_assumptions = NULL_RTX;
	}
      else
	{
	  /* We cannot just update niter_expr, as its value might be clobbered
	     inside loop.  We could handle this by counting the number into
	     temporary just like we do in runtime unrolling, but it does not
	     seem worthwhile.  */
	  FUNC7 (loop);
	}
    }
  if (dump_file)
    FUNC4 (dump_file, ";; Peeling loop %d times\n", npeel);
}