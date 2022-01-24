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
 int IA64_DVS_DATA ; 
 int IA64_DVS_IMPLIED ; 
 int IA64_DVS_IMPLIEDF ; 
 int IA64_DVS_INSTR ; 
 int IA64_DVS_NONE ; 
 int IA64_DVS_OTHER ; 
 int IA64_DVS_SPECIFIC ; 
 int IA64_DVS_STOP ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int
FUNC1 (char *sem)
{
  if (FUNC0 (sem, "none") == 0)
    return IA64_DVS_NONE;
  else if (FUNC0 (sem, "implied") == 0)
    return IA64_DVS_IMPLIED;
  else if (FUNC0 (sem, "impliedF") == 0)
    return IA64_DVS_IMPLIEDF;
  else if (FUNC0 (sem, "data") == 0)
    return IA64_DVS_DATA;
  else if (FUNC0 (sem, "instr") == 0)
    return IA64_DVS_INSTR;
  else if (FUNC0 (sem, "specific") == 0)
    return IA64_DVS_SPECIFIC;
  else if (FUNC0 (sem, "stop") == 0)
    return IA64_DVS_STOP;
  else 
    return IA64_DVS_OTHER;
}