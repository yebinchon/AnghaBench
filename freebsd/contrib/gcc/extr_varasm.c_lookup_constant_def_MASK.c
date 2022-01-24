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
struct constant_descriptor_tree {int /*<<< orphan*/  rtl; int /*<<< orphan*/  hash; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  const_desc_htab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct constant_descriptor_tree* FUNC1 (int /*<<< orphan*/ ,struct constant_descriptor_tree*,int /*<<< orphan*/ ) ; 

rtx
FUNC2 (tree exp)
{
  struct constant_descriptor_tree *desc;
  struct constant_descriptor_tree key;

  key.value = exp;
  key.hash = FUNC0 (exp);
  desc = FUNC1 (const_desc_htab, &key, key.hash);

  return (desc ? desc->rtl : NULL_RTX);
}