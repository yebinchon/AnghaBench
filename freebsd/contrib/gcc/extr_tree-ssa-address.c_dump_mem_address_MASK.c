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
struct mem_address {scalar_t__ offset; scalar_t__ step; scalar_t__ index; scalar_t__ base; scalar_t__ symbol; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC2 (FILE *file, struct mem_address *parts)
{
  if (parts->symbol)
    {
      FUNC0 (file, "symbol: ");
      FUNC1 (file, parts->symbol, TDF_SLIM);
      FUNC0 (file, "\n");
    }
  if (parts->base)
    {
      FUNC0 (file, "base: ");
      FUNC1 (file, parts->base, TDF_SLIM);
      FUNC0 (file, "\n");
    }
  if (parts->index)
    {
      FUNC0 (file, "index: ");
      FUNC1 (file, parts->index, TDF_SLIM);
      FUNC0 (file, "\n");
    }
  if (parts->step)
    {
      FUNC0 (file, "step: ");
      FUNC1 (file, parts->step, TDF_SLIM);
      FUNC0 (file, "\n");
    }
  if (parts->offset)
    {
      FUNC0 (file, "offset: ");
      FUNC1 (file, parts->offset, TDF_SLIM);
      FUNC0 (file, "\n");
    }
}