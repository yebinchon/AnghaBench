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
struct TYPE_2__ {int mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_1__ modrm ; 

__attribute__((used)) static void
FUNC2 (int bytemode, int sizeflag)
{
  if (modrm.mod == 3)
    /* bad bound,lea,lds,les,lfs,lgs,lss,cmpxchg8b,vmptrst,invept,invvpid modrm */
    FUNC0 ();
  else
    FUNC1 (bytemode, sizeflag);
}