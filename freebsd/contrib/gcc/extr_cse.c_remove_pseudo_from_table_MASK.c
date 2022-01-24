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
struct table_elt {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  VOIDmode ; 
 struct table_elt* FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct table_elt*,unsigned int) ; 

__attribute__((used)) static void
FUNC2 (rtx x, unsigned int hash)
{
  struct table_elt *elt;

  /* Because a pseudo-register can be referenced in more than one
     mode, we might have to remove more than one table entry.  */
  while ((elt = FUNC0 (x, hash, VOIDmode)))
    FUNC1 (elt, hash);
}