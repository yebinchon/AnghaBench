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
typedef  int bfd_boolean ;

/* Variables and functions */
 unsigned int STT_ARM_TFUNC ; 
 unsigned int STT_FUNC ; 

__attribute__((used)) static bfd_boolean
FUNC0 (unsigned int type)
{
  return (type == STT_FUNC) || (type == STT_ARM_TFUNC);
}