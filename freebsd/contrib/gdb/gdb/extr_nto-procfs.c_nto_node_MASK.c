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

/* Variables and functions */
 int ND_LOCAL_NODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nto_procfs_node ; 
 int /*<<< orphan*/  nto_procfs_path ; 

__attribute__((used)) static unsigned
FUNC3(void)
{
  unsigned node;

  if (FUNC0(nto_procfs_node, ND_LOCAL_NODE) == 0)
    return ND_LOCAL_NODE;

  node = FUNC2(nto_procfs_path,0);
  if (node == -1)
      FUNC1 ("Lost the QNX node.  Debug session probably over.");

  return (node);
}