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
struct MY_STAT {int dummy; } ;
typedef  scalar_t__ IntNative ;
typedef  int /*<<< orphan*/  Int32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct MY_STAT*) ; 
 scalar_t__ OM_TEST ; 
 scalar_t__ SM_F2F ; 
 scalar_t__ deleteOutputOnInterrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitValue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  inName ; 
 scalar_t__ noisy ; 
 scalar_t__ numFileNames ; 
 scalar_t__ numFilesProcessed ; 
 scalar_t__ opMode ; 
 char* outName ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 char* progName ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ srcMode ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static 
void FUNC6 ( Int32 ec )
{
   IntNative      retVal;
   struct MY_STAT statBuf;

   if ( srcMode == SM_F2F 
        && opMode != OM_TEST
        && deleteOutputOnInterrupt ) {

      /* Check whether input file still exists.  Delete output file
         only if input exists to avoid loss of data.  Joerg Prante, 5
         January 2002.  (JRS 06-Jan-2002: other changes in 1.0.2 mean
         this is less likely to happen.  But to be ultra-paranoid, we
         do the check anyway.)  */
      retVal = FUNC0 ( inName, &statBuf );
      if (retVal == 0) {
         if (noisy)
            FUNC3 ( stderr, 
                      "%s: Deleting output file %s, if it exists.\n",
                      progName, outName );
         if (outputHandleJustInCase != NULL)
            FUNC2 ( outputHandleJustInCase );
         retVal = FUNC4 ( outName );
         if (retVal != 0)
            FUNC3 ( stderr,
                      "%s: WARNING: deletion of output file "
                      "(apparently) failed.\n",
                      progName );
      } else {
         FUNC3 ( stderr,
                   "%s: WARNING: deletion of output file suppressed\n",
                    progName );
         FUNC3 ( stderr,
                   "%s:    since input file no longer exists.  Output file\n",
                   progName );
         FUNC3 ( stderr,
                   "%s:    `%s' may be incomplete.\n",
                   progName, outName );
         FUNC3 ( stderr, 
                   "%s:    I suggest doing an integrity test (bzip2 -tv)"
                   " of it.\n",
                   progName );
      }
   }

   if (noisy && numFileNames > 0 && numFilesProcessed < numFileNames) {
      FUNC3 ( stderr, 
                "%s: WARNING: some files have not been processed:\n"
                "%s:    %ld specified on command line, %ld not processed yet.\n\n",
                progName, progName,
                numFileNames, numFileNames - numFilesProcessed );
   }
   FUNC5(ec);
   FUNC1(exitValue);
}