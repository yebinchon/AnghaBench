#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpdr_ext {int /*<<< orphan*/  p_irpss; int /*<<< orphan*/  p_pcreg; int /*<<< orphan*/  p_framereg; int /*<<< orphan*/  p_frameoffset; int /*<<< orphan*/  p_fregoffset; int /*<<< orphan*/  p_fregmask; int /*<<< orphan*/  p_regoffset; int /*<<< orphan*/  p_regmask; int /*<<< orphan*/  p_adr; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  irpss; int /*<<< orphan*/  pcreg; int /*<<< orphan*/  framereg; int /*<<< orphan*/  frameoffset; int /*<<< orphan*/  fregoffset; int /*<<< orphan*/  fregmask; int /*<<< orphan*/  regoffset; int /*<<< orphan*/  regmask; int /*<<< orphan*/  adr; } ;
typedef  TYPE_1__ RPDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, const RPDR *in, struct rpdr_ext *ex)
{
  FUNC2 (abfd, in->adr, ex->p_adr);
  FUNC1 (abfd, in->regmask, ex->p_regmask);
  FUNC1 (abfd, in->regoffset, ex->p_regoffset);
  FUNC1 (abfd, in->fregmask, ex->p_fregmask);
  FUNC1 (abfd, in->fregoffset, ex->p_fregoffset);
  FUNC1 (abfd, in->frameoffset, ex->p_frameoffset);

  FUNC0 (abfd, in->framereg, ex->p_framereg);
  FUNC0 (abfd, in->pcreg, ex->p_pcreg);

  FUNC1 (abfd, in->irpss, ex->p_irpss);
}