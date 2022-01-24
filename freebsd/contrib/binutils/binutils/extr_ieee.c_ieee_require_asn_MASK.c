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
typedef  scalar_t__ ieee_record_enum_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  unsigned int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ieee_asn_record_enum ; 
 scalar_t__ ieee_e2_first_byte_enum ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_info*,unsigned int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_info*,unsigned int const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_info*,unsigned int const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct ieee_info *info, const bfd_byte **pp, bfd_vma *pv)
{
  const bfd_byte *start;
  ieee_record_enum_type c;
  bfd_vma varindx;

  start = *pp;

  c = (ieee_record_enum_type) **pp;
  if (c != ieee_e2_first_byte_enum)
    {
      FUNC1 (info, start, FUNC0("missing required ASN"));
      return FALSE;
    }
  ++*pp;

  c = (ieee_record_enum_type) (((unsigned int) c << 8) | **pp);
  if (c != ieee_asn_record_enum)
    {
      FUNC1 (info, start, FUNC0("missing required ASN"));
      return FALSE;
    }
  ++*pp;

  /* Just ignore the variable index.  */
  if (! FUNC3 (info, pp, &varindx))
    return FALSE;

  return FUNC2 (info, pp, pv);
}