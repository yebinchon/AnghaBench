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
typedef  int /*<<< orphan*/  debug_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static debug_type
FUNC4 (void *dhandle, const char **pp)
{
  const char *orig;
  bfd_boolean unsignedp;
  bfd_vma bits;

  orig = *pp;

  switch (**pp)
    {
    case 's':
      unsignedp = FALSE;
      break;
    case 'u':
      unsignedp = TRUE;
      break;
    default:
      FUNC0 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  /* For some odd reason, all forms of char put a c here.  This is strange
     because no other type has this honor.  We can safely ignore this because
     we actually determine 'char'acterness by the number of bits specified in
     the descriptor.  */
  if (**pp == 'c')
    ++*pp;

  /* The first number appears to be the number of bytes occupied
     by this type, except that unsigned short is 4 instead of 2.
     Since this information is redundant with the third number,
     we will ignore it.  */
  (void) FUNC3 (pp, (bfd_boolean *) NULL);
  if (**pp != ';')
    {
      FUNC0 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  /* The second number is always 0, so ignore it too.  */
  (void) FUNC3 (pp, (bfd_boolean *) NULL);
  if (**pp != ';')
    {
      FUNC0 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  /* The third number is the number of bits for this type.  */
  bits = FUNC3 (pp, (bfd_boolean *) NULL);

  /* The type *should* end with a semicolon.  If it are embedded
     in a larger type the semicolon may be the only way to know where
     the type ends.  If this type is at the end of the stabstring we
     can deal with the omitted semicolon (but we don't have to like
     it).  Don't bother to complain(), Sun's compiler omits the semicolon
     for "void".  */
  if (**pp == ';')
    ++*pp;

  if (bits == 0)
    return FUNC2 (dhandle);

  return FUNC1 (dhandle, bits / 8, unsignedp);
}