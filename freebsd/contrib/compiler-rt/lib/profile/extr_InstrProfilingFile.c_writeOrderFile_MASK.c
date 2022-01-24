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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FreeHook ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  free ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(const char *OutputName) {
  int RetVal;
  FILE *OutputFile;

  OutputFile = FUNC3(OutputName, "w");

  if (!OutputFile) {
    FUNC0("can't open file with mode ab: %s\n", OutputName);
    return -1;
  }

  FreeHook = &free;
  FUNC5();
  const uint32_t *DataBegin = FUNC1();
  RetVal = FUNC4(OutputFile, DataBegin);

  FUNC2(OutputFile);
  return RetVal;
}