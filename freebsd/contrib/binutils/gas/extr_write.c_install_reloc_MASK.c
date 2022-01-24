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
struct TYPE_3__ {int /*<<< orphan*/  fr_address; int /*<<< orphan*/  fr_literal; } ;
typedef  TYPE_1__ fragS ;
typedef  int bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  asection ;
typedef  int /*<<< orphan*/  arelent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
#define  bfd_reloc_ok 130 
#define  bfd_reloc_outofrange 129 
#define  bfd_reloc_overflow 128 
 int /*<<< orphan*/  stdoutput ; 

__attribute__((used)) static void
FUNC4 (asection *sec, arelent *reloc, fragS *fragp,
	       char *file, unsigned int line)
{
  char *err;
  bfd_reloc_status_type s;

  s = FUNC3 (stdoutput, reloc,
			      fragp->fr_literal, fragp->fr_address,
			      sec, &err);
  switch (s)
    {
    case bfd_reloc_ok:
      break;
    case bfd_reloc_overflow:
      FUNC1 (file, line, FUNC0("relocation overflow"));
      break;
    case bfd_reloc_outofrange:
      FUNC1 (file, line, FUNC0("relocation out of range"));
      break;
    default:
      FUNC2 (FUNC0("%s:%u: bad return from bfd_install_relocation: %x"),
		file, line, s);
    }
}