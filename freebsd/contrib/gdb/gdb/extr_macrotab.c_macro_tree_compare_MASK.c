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
struct macro_key {int /*<<< orphan*/  start_line; int /*<<< orphan*/  start_file; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ splay_tree_key ;

/* Variables and functions */
 int FUNC0 (struct macro_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (splay_tree_key untyped_key1,
                    splay_tree_key untyped_key2)
{
  struct macro_key *key1 = (struct macro_key *) untyped_key1;
  struct macro_key *key2 = (struct macro_key *) untyped_key2;

  return FUNC0 (key1, key2->name, key2->start_file, key2->start_line);
}