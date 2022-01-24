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
struct niter_desc {int simple_p; } ;
struct loops {int dummy; } ;
struct TYPE_2__ {unsigned int times; } ;
struct loop {TYPE_1__ lpt_decision; } ;
typedef  int /*<<< orphan*/  sbitmap ;

/* Variables and functions */
 int DLTHE_FLAG_UPDATE_FREQ ; 
 int DLTHE_RECORD_COPY_NUMBER ; 
 struct opt_info* FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct opt_info*,unsigned int,int,int) ; 
 scalar_t__ dump_file ; 
 int FUNC2 (struct loop*,int /*<<< orphan*/ ,struct loops*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ flag_split_ivs_in_unroller ; 
 scalar_t__ flag_variable_expansion_in_unroller ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct opt_info*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct niter_desc* FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*) ; 
 int FUNC9 (struct loop*) ; 
 int /*<<< orphan*/  FUNC10 (struct opt_info*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (struct loops *loops, struct loop *loop)
{
  sbitmap wont_exit;
  unsigned nunroll = loop->lpt_decision.times;
  struct niter_desc *desc = FUNC7 (loop);
  struct opt_info *opt_info = NULL;
  bool ok;
  
  if (flag_split_ivs_in_unroller
      || flag_variable_expansion_in_unroller)
    opt_info = FUNC0 (loop);
  
  
  wont_exit = FUNC11 (nunroll + 1);
  FUNC12 (wont_exit);
  FUNC10 (opt_info);
  
  ok = FUNC2 (loop, FUNC8 (loop),
				      loops, nunroll, wont_exit,
				      NULL, NULL, NULL,
				      DLTHE_FLAG_UPDATE_FREQ
				      | (opt_info
					 ? DLTHE_RECORD_COPY_NUMBER
					   : 0));
  FUNC6 (ok);
  
  if (opt_info)
    {
      FUNC1 (opt_info, nunroll, true, true);
      FUNC5 (opt_info);
    }

  FUNC4 (wont_exit);

  if (desc->simple_p)
    {
      /* We indeed may get here provided that there are nontrivial assumptions
	 for a loop to be really simple.  We could update the counts, but the
	 problem is that we are unable to decide which exit will be taken
	 (not really true in case the number of iterations is constant,
	 but noone will do anything with this information, so we do not
	 worry about it).  */
      desc->simple_p = false;
    }

  if (dump_file)
    FUNC3 (dump_file, ";; Unrolled loop %d times, %i insns\n",
	     nunroll, FUNC9 (loop));
}