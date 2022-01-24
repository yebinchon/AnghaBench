#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int type; } ;
typedef  TYPE_1__ Elf_Internal_Note ;

/* Variables and functions */
#define  BFD_QNT_CORE_FPREG 131 
#define  BFD_QNT_CORE_GREG 130 
#define  BFD_QNT_CORE_INFO 129 
#define  BFD_QNT_CORE_STATUS 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, Elf_Internal_Note *note)
{
  /* Every GREG section has a STATUS section before it.  Store the
     tid from the previous call to pass down to the next gregs
     function.  */
  static long tid = 1;

  switch (note->type)
    {
    case BFD_QNT_CORE_INFO:
      return FUNC2 (abfd, ".qnx_core_info", note);
    case BFD_QNT_CORE_STATUS:
      return FUNC1 (abfd, note, &tid);
    case BFD_QNT_CORE_GREG:
      return FUNC0 (abfd, note, tid, ".reg");
    case BFD_QNT_CORE_FPREG:
      return FUNC0 (abfd, note, tid, ".reg2");
    default:
      return TRUE;
    }
}