#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dst_mask; } ;
typedef  TYPE_1__ reloc_howto_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC10 (reloc_howto_type *howto,
		     bfd *input_bfd,
		     bfd_byte *location)
{
  int size;
  bfd_vma x = 0;

  /* Get the value we are going to relocate.  */
  size = FUNC5 (howto);
  switch (size)
    {
    default:
    case 0:
      FUNC0 ();
    case 1:
      x = FUNC4 (input_bfd, location);
      break;
    case 2:
      x = FUNC1 (input_bfd, location);
      break;
    case 4:
      x = FUNC2 (input_bfd, location);
      break;
    case 8:
#ifdef BFD64
      x = bfd_get_64 (input_bfd, location);
#else
      FUNC0 ();
#endif
      break;
    }

  /* Zero out the unwanted bits of X.  */
  x &= ~howto->dst_mask;

  /* Put the relocated value back in the object file.  */
  switch (size)
    {
    default:
    case 0:
      FUNC0 ();
    case 1:
      FUNC9 (input_bfd, x, location);
      break;
    case 2:
      FUNC6 (input_bfd, x, location);
      break;
    case 4:
      FUNC7 (input_bfd, x, location);
      break;
    case 8:
#ifdef BFD64
      bfd_put_64 (input_bfd, x, location);
#else
      FUNC0 ();
#endif
      break;
    }
}