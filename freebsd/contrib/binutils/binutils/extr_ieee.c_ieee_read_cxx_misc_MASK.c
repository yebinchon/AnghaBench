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
struct ieee_info {int /*<<< orphan*/  const* pend; } ;
typedef  int /*<<< orphan*/  ieee_record_enum_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ieee_at_record_enum ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_info*,int /*<<< orphan*/  const**,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_info*,int /*<<< orphan*/  const**,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_info*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (struct ieee_info *info, const bfd_byte **pp,
		    unsigned long count)
{
  const bfd_byte *start;
  bfd_vma category;

  start = *pp;

  /* Get the category of C++ misc record.  */
  if (! FUNC5 (info, pp, &category))
    return FALSE;
  --count;

  switch (category)
    {
    default:
      FUNC1 (info, start, FUNC0("unrecognized C++ misc record"));
      return FALSE;

    case 'T':
      if (! FUNC2 (info, pp, count))
	return FALSE;
      break;

    case 'M':
      {
	bfd_vma flags;
	const char *name;
	unsigned long namlen;

	/* The IEEE spec indicates that the 'M' record only has a
           flags field.  The MRI compiler also emits the name of the
           function.  */

	if (! FUNC5 (info, pp, &flags))
	  return FALSE;
	if (*pp < info->pend
	    && (ieee_record_enum_type) **pp == ieee_at_record_enum)
	  {
	    if (! FUNC6 (info, pp, &name, &namlen))
	      return FALSE;
	  }

	/* This is emitted for method functions, but I don't think we
           care very much.  It might help if it told us useful
           information like the class with which this function is
           associated, but it doesn't, so it isn't helpful.  */
      }
      break;

    case 'B':
      if (! FUNC3 (info, pp, count))
	return FALSE;
      break;

    case 'z':
      {
	const char *name, *mangled, *class;
	unsigned long namlen, mangledlen, classlen;
	bfd_vma control;

	/* Pointer to member.  */

	if (! FUNC6 (info, pp, &name, &namlen)
	    || ! FUNC6 (info, pp, &mangled, &mangledlen)
	    || ! FUNC6 (info, pp, &class, &classlen)
	    || ! FUNC5 (info, pp, &control))
	  return FALSE;

	/* FIXME: We should now track down name and change its type.  */
      }
      break;

    case 'R':
      if (! FUNC4 (info, pp))
	return FALSE;
      break;
    }

  return TRUE;
}