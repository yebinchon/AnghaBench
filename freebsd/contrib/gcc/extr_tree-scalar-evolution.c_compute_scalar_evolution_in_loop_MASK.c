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
typedef  int /*<<< orphan*/  tree ;
struct loop {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_not_analyzed_yet ; 
 int /*<<< orphan*/  FUNC1 (struct loop*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC2 (struct loop*,scalar_t__) ; 

__attribute__((used)) static tree 
FUNC3 (struct loop *wrto_loop, 
				  struct loop *def_loop, 
				  tree ev)
{
  tree res;
  if (def_loop == wrto_loop)
    return ev;

  def_loop = FUNC2 (def_loop, wrto_loop->depth + 1);
  res = FUNC1 (def_loop, ev);

  return FUNC0 (wrto_loop, res, chrec_not_analyzed_yet);
}