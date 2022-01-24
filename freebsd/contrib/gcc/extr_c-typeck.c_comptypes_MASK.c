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
struct tagged_tu_seen_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tagged_tu_seen_cache const*) ; 
 struct tagged_tu_seen_cache* tagged_tu_seen_base ; 

int
FUNC2 (tree type1, tree type2)
{
  const struct tagged_tu_seen_cache * tagged_tu_seen_base1 = tagged_tu_seen_base;
  int val;

  val = FUNC0 (type1, type2);
  FUNC1 (tagged_tu_seen_base1);

  return val;
}