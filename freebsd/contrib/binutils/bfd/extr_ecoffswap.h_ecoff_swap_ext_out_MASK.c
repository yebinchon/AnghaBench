#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ext_ext {int* es_bits1; int /*<<< orphan*/  es_asym; int /*<<< orphan*/  es_ifd; scalar_t__* es_bits2; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int /*<<< orphan*/  asym; int /*<<< orphan*/  ifd; scalar_t__ weakext; scalar_t__ cobol_main; scalar_t__ jmptbl; } ;
typedef  TYPE_1__ EXTR ;

/* Variables and functions */
 int EXT_BITS1_COBOL_MAIN_BIG ; 
 int EXT_BITS1_COBOL_MAIN_LITTLE ; 
 int EXT_BITS1_JMPTBL_BIG ; 
 int EXT_BITS1_JMPTBL_LITTLE ; 
 int EXT_BITS1_WEAKEXT_BIG ; 
 int EXT_BITS1_WEAKEXT_LITTLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd, const EXTR *intern_copy, void * ext_ptr)
{
  struct ext_ext *ext = (struct ext_ext *) ext_ptr;
  EXTR intern[1];

  /* Make it reasonable to do in-place.  */
  *intern = *intern_copy;

  /* Now the fun stuff...  */
  if (FUNC3 (abfd))
    {
      ext->es_bits1[0] = ((intern->jmptbl ? EXT_BITS1_JMPTBL_BIG : 0)
			  | (intern->cobol_main ? EXT_BITS1_COBOL_MAIN_BIG : 0)
			  | (intern->weakext ? EXT_BITS1_WEAKEXT_BIG : 0));
      ext->es_bits2[0] = 0;
#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
      ext->es_bits2[1] = 0;
      ext->es_bits2[2] = 0;
#endif
    }
  else
    {
      ext->es_bits1[0] = ((intern->jmptbl ? EXT_BITS1_JMPTBL_LITTLE : 0)
			  | (intern->cobol_main ? EXT_BITS1_COBOL_MAIN_LITTLE : 0)
			  | (intern->weakext ? EXT_BITS1_WEAKEXT_LITTLE : 0));
      ext->es_bits2[0] = 0;
#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
      ext->es_bits2[1] = 0;
      ext->es_bits2[2] = 0;
#endif
    }

#if defined (ECOFF_32) || defined (ECOFF_SIGNED_32)
  H_PUT_S16 (abfd, intern->ifd, ext->es_ifd);
#endif
#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
  H_PUT_S32 (abfd, intern->ifd, ext->es_ifd);
#endif

  FUNC4 (abfd, &intern->asym, &ext->es_asym);

#ifdef TEST
  if (memcmp ((char *) ext, (char *) intern, sizeof (*intern)) != 0)
    abort ();
#endif
}