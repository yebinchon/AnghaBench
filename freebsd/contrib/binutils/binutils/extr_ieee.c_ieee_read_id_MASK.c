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
struct ieee_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC1 (struct ieee_info *info, const bfd_byte **pp,
	      const char **pname, unsigned long *pnamlen)
{
  return FUNC0 (info, pp, pname, pnamlen, (bfd_boolean *) NULL);
}