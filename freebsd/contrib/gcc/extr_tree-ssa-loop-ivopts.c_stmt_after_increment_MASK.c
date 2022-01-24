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
struct loop {int dummy; } ;
struct iv_cand {int pos; } ;

/* Variables and functions */
#define  IP_END 130 
#define  IP_NORMAL 129 
#define  IP_ORIGINAL 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct loop*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iv_cand*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (struct loop *loop, struct iv_cand *cand, tree stmt)
{
  switch (cand->pos)
    {
    case IP_END:
      return false;

    case IP_NORMAL:
      return FUNC1 (loop, stmt);

    case IP_ORIGINAL:
      return FUNC2 (cand, stmt);

    default:
      FUNC0 ();
    }
}