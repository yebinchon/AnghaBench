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
struct TYPE_2__ {int mod; int rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODRM_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int REX_B ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  codep ; 
 size_t intel_syntax ; 
 TYPE_1__ modrm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int rex ; 
 int /*<<< orphan*/ * scratchbuf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC4 (int bytemode, int sizeflag)
{
  int add = 0;
  if (modrm.mod != 3)
    {
      FUNC0 (bytemode, sizeflag);
      return;
    }
  FUNC1 (REX_B);
  if (rex & REX_B)
    add = 8;

  /* Skip mod/rm byte.  */
  MODRM_CHECK;
  codep++;
  FUNC3 (scratchbuf, "%%xmm%d", modrm.rm + add);
  FUNC2 (&scratchbuf[intel_syntax]);
}