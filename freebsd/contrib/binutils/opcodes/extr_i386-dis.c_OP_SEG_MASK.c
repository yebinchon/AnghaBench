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
struct TYPE_2__ {size_t reg; int mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__ modrm ; 
 int /*<<< orphan*/ * names_seg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int w_mode ; 

__attribute__((used)) static void
FUNC2 (int bytemode, int sizeflag)
{
  if (bytemode == w_mode)
    FUNC1 (names_seg[modrm.reg]);
  else
    FUNC0 (modrm.mod == 3 ? bytemode : w_mode, sizeflag);
}