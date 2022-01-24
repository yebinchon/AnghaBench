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
typedef  int /*<<< orphan*/  ProfDataWriter ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FreeHook ; 
 int /*<<< orphan*/ * VPMergeHook ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  lprofMergeValueProfData ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(const char *OutputName) {
  int RetVal;
  FILE *OutputFile;

  int MergeDone = 0;
  VPMergeHook = &lprofMergeValueProfData;
  if (FUNC0())
    OutputFile = FUNC9(OutputName, &MergeDone);
  else
    OutputFile = FUNC3(OutputName);

  if (!OutputFile)
    return -1;

  FreeHook = &free;
  FUNC10();
  ProfDataWriter fileWriter;
  FUNC5(&fileWriter, OutputFile);
  RetVal = FUNC8(&fileWriter, FUNC6(), MergeDone);

  if (OutputFile == FUNC4()) {
    FUNC2(OutputFile);
    if (FUNC0()) {
      FUNC7(OutputFile);
    }
  } else {
    FUNC1(OutputFile);
  }

  return RetVal;
}