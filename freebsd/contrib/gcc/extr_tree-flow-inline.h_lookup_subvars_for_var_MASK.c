#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_ann_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  subvar_t ;
struct TYPE_4__ {int /*<<< orphan*/  subvars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline subvar_t *
FUNC2 (tree var)
{
  var_ann_t ann = FUNC1 (var);
  FUNC0 (ann);
  return &ann->subvars;
}