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
 unsigned int FIX_VR4120_DIV ; 
 unsigned int FIX_VR4120_DMACC ; 
 unsigned int FIX_VR4120_DMULT ; 
 unsigned int FIX_VR4120_MACC ; 
 unsigned int FIX_VR4120_MTHILO ; 
 unsigned int FIX_VR4120_MULT ; 
 unsigned int NUM_FIX_VR4120_CLASSES ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static unsigned int
FUNC3 (const char *name)
{
  if (FUNC1 (name, "macc", 4) == 0)
    return FIX_VR4120_MACC;
  if (FUNC1 (name, "dmacc", 5) == 0)
    return FIX_VR4120_DMACC;
  if (FUNC1 (name, "mult", 4) == 0)
    return FIX_VR4120_MULT;
  if (FUNC1 (name, "dmult", 5) == 0)
    return FIX_VR4120_DMULT;
  if (FUNC2 (name, "div"))
    return FIX_VR4120_DIV;
  if (FUNC0 (name, "mtlo") == 0 || FUNC0 (name, "mthi") == 0)
    return FIX_VR4120_MTHILO;
  return NUM_FIX_VR4120_CLASSES;
}