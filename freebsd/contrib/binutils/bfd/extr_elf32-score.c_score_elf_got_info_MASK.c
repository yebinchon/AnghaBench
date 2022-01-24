#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct score_got_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_3__ {struct score_got_info* got_info; } ;
struct TYPE_4__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct score_got_info *
FUNC4 (bfd *abfd, asection **sgotp)
{
  asection *sgot;
  struct score_got_info *g;

  sgot = FUNC2 (abfd, TRUE);
  FUNC0 (sgot != NULL);
  FUNC0 (FUNC1 (sgot) != NULL);
  g = FUNC3 (sgot)->u.got_info;
  FUNC0 (g != NULL);

  if (sgotp)
    *sgotp = sgot;
  return g;
}