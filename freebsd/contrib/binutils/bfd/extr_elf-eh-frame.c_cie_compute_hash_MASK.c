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
struct cie {int /*<<< orphan*/  hash; scalar_t__ initial_insn_length; int /*<<< orphan*/  initial_instructions; scalar_t__ fde_encoding; scalar_t__ lsda_encoding; scalar_t__ per_encoding; scalar_t__ output_sec; scalar_t__ personality; scalar_t__ augmentation_size; scalar_t__ ra_column; scalar_t__ data_align; scalar_t__ code_align; int /*<<< orphan*/  augmentation; scalar_t__ version; scalar_t__ length; } ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static hashval_t
FUNC3 (struct cie *c)
{
  hashval_t h = 0;
  h = FUNC1 (c->length, h);
  h = FUNC1 (c->version, h);
  h = FUNC0 (c->augmentation, FUNC2 (c->augmentation) + 1, h);
  h = FUNC1 (c->code_align, h);
  h = FUNC1 (c->data_align, h);
  h = FUNC1 (c->ra_column, h);
  h = FUNC1 (c->augmentation_size, h);
  h = FUNC1 (c->personality, h);
  h = FUNC1 (c->output_sec, h);
  h = FUNC1 (c->per_encoding, h);
  h = FUNC1 (c->lsda_encoding, h);
  h = FUNC1 (c->fde_encoding, h);
  h = FUNC1 (c->initial_insn_length, h);
  h = FUNC0 (c->initial_instructions, c->initial_insn_length, h);
  c->hash = h;
  return h;
}