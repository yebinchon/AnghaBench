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
 int NMAGIC ; 
 int OMAGIC ; 
 int QMAGIC ; 
 int ZMAGIC ; 
 long FUNC0 (void*) ; 
 long FUNC1 (void*) ; 

__attribute__((used)) static long
FUNC2 (void *ext)
{
  long linfo = FUNC1(ext);
  long binfo = FUNC0(ext);
  int lmagic = linfo & 0xffff;
  int bmagic = binfo & 0xffff;
  int lmagic_ok = lmagic == OMAGIC || lmagic == NMAGIC ||
    lmagic == ZMAGIC || lmagic == QMAGIC;
  int bmagic_ok = bmagic == OMAGIC || bmagic == NMAGIC ||
    bmagic == ZMAGIC || bmagic == QMAGIC;

  return bmagic_ok && !lmagic_ok ? binfo : linfo;
}