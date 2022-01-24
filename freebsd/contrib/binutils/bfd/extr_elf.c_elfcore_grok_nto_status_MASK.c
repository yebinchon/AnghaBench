#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int alignment_power; int /*<<< orphan*/  filepos; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ asection ;
struct TYPE_9__ {short core_signal; long core_lwpid; void* core_pid; } ;
struct TYPE_8__ {int /*<<< orphan*/  descpos; int /*<<< orphan*/  descsz; void* descdata; } ;
typedef  TYPE_2__ Elf_Internal_Note ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 short FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd, Elf_Internal_Note *note, long *tid)
{
  void *ddata = note->descdata;
  char buf[100];
  char *name;
  asection *sect;
  short sig;
  unsigned flags;

  /* nto_procfs_status 'pid' field is at offset 0.  */
  FUNC4 (abfd)->core_pid = FUNC2 (abfd, (bfd_byte *) ddata);

  /* nto_procfs_status 'tid' field is at offset 4.  Pass it back.  */
  *tid = FUNC2 (abfd, (bfd_byte *) ddata + 4);

  /* nto_procfs_status 'flags' field is at offset 8.  */
  flags = FUNC2 (abfd, (bfd_byte *) ddata + 8);

  /* nto_procfs_status 'what' field is at offset 14.  */
  if ((sig = FUNC1 (abfd, (bfd_byte *) ddata + 14)) > 0)
    {
      FUNC4 (abfd)->core_signal = sig;
      FUNC4 (abfd)->core_lwpid = *tid;
    }

  /* _DEBUG_FLAG_CURTID (current thread) is 0x80.  Some cores
     do not come from signals so we make sure we set the current
     thread just in case.  */
  if (flags & 0x00000080)
    FUNC4 (abfd)->core_lwpid = *tid;

  /* Make a ".qnx_core_status/%d" section.  */
  FUNC6 (buf, ".qnx_core_status/%ld", *tid);

  name = FUNC0 (abfd, FUNC8 (buf) + 1);
  if (name == NULL)
    return FALSE;
  FUNC7 (name, buf);

  sect = FUNC3 (abfd, name, SEC_HAS_CONTENTS);
  if (sect == NULL)
    return FALSE;

  sect->size            = note->descsz;
  sect->filepos         = note->descpos;
  sect->alignment_power = 2;

  return (FUNC5 (abfd, ".qnx_core_status", sect));
}