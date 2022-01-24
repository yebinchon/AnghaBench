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
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int SHF_X86_64_LARGE ; 
 unsigned int SHN_COMMON ; 
 unsigned int SHN_X86_64_LCOMMON ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC1 (asection *sec)
{
  if ((FUNC0 (sec) & SHF_X86_64_LARGE) == 0)
    return SHN_COMMON;
  else
    return SHN_X86_64_LCOMMON;
}