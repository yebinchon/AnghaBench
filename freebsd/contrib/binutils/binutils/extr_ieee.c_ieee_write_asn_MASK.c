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
struct ieee_handle {int dummy; } ;
typedef  unsigned int bfd_vma ;
typedef  int bfd_boolean ;

/* Variables and functions */
 scalar_t__ ieee_asn_record_enum ; 
 scalar_t__ FUNC0 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC1 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (struct ieee_handle *info, unsigned int indx, bfd_vma val)
{
  return (FUNC0 (info, (int) ieee_asn_record_enum)
	  && FUNC1 (info, indx)
	  && FUNC1 (info, val));
}