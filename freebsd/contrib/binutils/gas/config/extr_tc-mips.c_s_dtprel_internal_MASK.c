#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ X_op; } ;
typedef  TYPE_1__ expressionS ;
struct TYPE_7__ {int fr_literal; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_MIPS_TLS_DTPREL32 ; 
 int /*<<< orphan*/  BFD_RELOC_MIPS_TLS_DTPREL64 ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,size_t,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (size_t) ; 
 TYPE_2__* frag_now ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC8 (size_t bytes)
{
  expressionS ex;
  char *p;

  FUNC3 (&ex);

  if (ex.X_op != O_symbol)
    {
      FUNC1 (FUNC0("Unsupported use of %s"), (bytes == 8
					   ? ".dtpreldword"
					   : ".dtprelword"));
      FUNC6 ();
    }

  p = FUNC5 (bytes);
  FUNC7 (p, 0, bytes);
  FUNC4 (frag_now, p - frag_now->fr_literal, bytes, &ex, FALSE,
	       (bytes == 8
		? BFD_RELOC_MIPS_TLS_DTPREL64
		: BFD_RELOC_MIPS_TLS_DTPREL32));

  FUNC2 ();
}