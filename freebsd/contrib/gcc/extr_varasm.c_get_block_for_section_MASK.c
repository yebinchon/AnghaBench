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
struct object_block {int /*<<< orphan*/ * sect; } ;
typedef  int /*<<< orphan*/  section ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  object_block_htab ; 

__attribute__((used)) static struct object_block *
FUNC3 (section *sect)
{
  struct object_block *block;
  void **slot;

  if (sect == NULL)
    return NULL;

  slot = FUNC2 (object_block_htab, sect,
				   FUNC1 (sect), INSERT);
  block = (struct object_block *) *slot;
  if (block == NULL)
    {
      block = (struct object_block *)
	FUNC0 (sizeof (struct object_block));
      block->sect = sect;
      *slot = block;
    }
  return block;
}