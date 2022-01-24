#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ MergePoolSize; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 TYPE_1__ lprofCurFilename ; 

__attribute__((used)) static void FUNC6(void) {
  const char *Filename;
  char *FilenameBuf;
  FILE *File;
  int Length;

  Length = FUNC5();
  FilenameBuf = (char *)FUNC0(Length + 1);
  Filename = FUNC4(FilenameBuf, 0);
  if (!Filename)
    return;

  /* By pass file truncation to allow online raw profile
   * merging. */
  if (lprofCurFilename.MergePoolSize)
    return;

  FUNC1(Filename);

  /* Truncate the file.  Later we'll reopen and append. */
  File = FUNC3(Filename, "w");
  if (!File)
    return;
  FUNC2(File);
}