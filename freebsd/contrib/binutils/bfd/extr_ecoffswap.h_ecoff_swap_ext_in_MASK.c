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
struct ext_ext {int* es_bits1; int /*<<< orphan*/  es_asym; int /*<<< orphan*/  es_ifd; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int jmptbl; int cobol_main; int weakext; int /*<<< orphan*/  asym; int /*<<< orphan*/  ifd; scalar_t__ reserved; } ;
typedef  TYPE_1__ EXTR ;

/* Variables and functions */
 int EXT_BITS1_COBOL_MAIN_BIG ; 
 int EXT_BITS1_COBOL_MAIN_LITTLE ; 
 int EXT_BITS1_JMPTBL_BIG ; 
 int EXT_BITS1_JMPTBL_LITTLE ; 
 int EXT_BITS1_WEAKEXT_BIG ; 
 int EXT_BITS1_WEAKEXT_LITTLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6 (bfd *abfd, void * ext_copy, EXTR *intern)
{
  struct ext_ext ext[1];

  *ext = *(struct ext_ext *) ext_copy;

  /* Now the fun stuff...  */
  if (FUNC3 (abfd))
    {
      intern->jmptbl      = 0 != (ext->es_bits1[0] & EXT_BITS1_JMPTBL_BIG);
      intern->cobol_main  = 0 != (ext->es_bits1[0] & EXT_BITS1_COBOL_MAIN_BIG);
      intern->weakext     = 0 != (ext->es_bits1[0] & EXT_BITS1_WEAKEXT_BIG);
    }
  else
    {
      intern->jmptbl      = 0 != (ext->es_bits1[0] & EXT_BITS1_JMPTBL_LITTLE);
      intern->cobol_main  = 0 != (ext->es_bits1[0] & EXT_BITS1_COBOL_MAIN_LITTLE);
      intern->weakext     = 0 != (ext->es_bits1[0] & EXT_BITS1_WEAKEXT_LITTLE);
    }
  intern->reserved = 0;

#if defined (ECOFF_32) || defined (ECOFF_SIGNED_32)
  intern->ifd = H_GET_S16 (abfd, ext->es_ifd);
#endif
#if defined (ECOFF_64) || defined (ECOFF_SIGNED_64)
  intern->ifd = H_GET_S32 (abfd, ext->es_ifd);
#endif

  FUNC4 (abfd, &ext->es_asym, &intern->asym);

#ifdef TEST
  if (memcmp ((char *) ext, (char *) intern, sizeof (*intern)) != 0)
    abort ();
#endif
}