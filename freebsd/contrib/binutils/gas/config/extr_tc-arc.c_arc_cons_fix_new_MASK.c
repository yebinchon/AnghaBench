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
typedef  int /*<<< orphan*/  fragS ;
typedef  int /*<<< orphan*/  expressionS ;

/* Variables and functions */
 int BFD_RELOC_16 ; 
 int BFD_RELOC_32 ; 
 int BFD_RELOC_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2 (fragS *frag,
		  int where,
		  int nbytes,
		  expressionS *exp)
{
  if (nbytes == 4)
    {
      int reloc_type;
      expressionS exptmp;

      /* This may be a special ARC reloc (eg: %st()).  */
      reloc_type = FUNC1 (1, BFD_RELOC_32, exp, &exptmp);
      FUNC0 (frag, where, nbytes, &exptmp, 0, reloc_type);
    }
  else
    {
      FUNC0 (frag, where, nbytes, exp, 0,
		   nbytes == 2 ? BFD_RELOC_16
		   : nbytes == 8 ? BFD_RELOC_64
		   : BFD_RELOC_32);
    }
}