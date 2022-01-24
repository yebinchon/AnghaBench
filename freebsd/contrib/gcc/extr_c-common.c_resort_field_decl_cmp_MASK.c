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
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  (* new_value ) (scalar_t__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 scalar_t__ TYPE_DECL ; 
 TYPE_1__ resort_data ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (const void *x_p, const void *y_p)
{
  const tree *const x = (const tree *const) x_p;
  const tree *const y = (const tree *const) y_p;

  if (FUNC0 (*x) == FUNC0 (*y))
    /* A nontype is "greater" than a type.  */
    return (FUNC1 (*y) == TYPE_DECL) - (FUNC1 (*x) == TYPE_DECL);
  if (FUNC0 (*x) == NULL_TREE)
    return -1;
  if (FUNC0 (*y) == NULL_TREE)
    return 1;
  {
    tree d1 = FUNC0 (*x);
    tree d2 = FUNC0 (*y);
    resort_data.new_value (&d1, resort_data.cookie);
    resort_data.new_value (&d2, resort_data.cookie);
    if (d1 < d2)
      return -1;
  }
  return 1;
}