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
struct MY_STAT {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Char ;
typedef  scalar_t__ Bool ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (char*,struct MY_STAT*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  SM_F2F 130 
#define  SM_F2O 129 
#define  SM_I2O 128 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deleteOutputOnInterrupt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 char* inName ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ noisy ; 
 char* outName ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* progName ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int srcMode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  testFailsExist ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

__attribute__((used)) static 
void FUNC15 ( Char *name )
{
   FILE *inStr;
   Bool allOK;
   struct MY_STAT statBuf;

   deleteOutputOnInterrupt = False;

   if (name == NULL && srcMode != SM_I2O)
      FUNC11 ( "testf: bad modes\n" );

   FUNC3 ( outName, (Char*)"(none)" );
   switch (srcMode) {
      case SM_I2O: FUNC3 ( inName, (Char*)"(stdin)" ); break;
      case SM_F2F: FUNC3 ( inName, name ); break;
      case SM_F2O: FUNC3 ( inName, name ); break;
   }

   if ( srcMode != SM_I2O && FUNC2 ( inName ) ) {
      if (noisy)
      FUNC8 ( stderr, "%s: There are no files matching `%s'.\n",
                progName, inName );
      FUNC12(1);
      return;
   }
   if ( srcMode != SM_I2O && !FUNC5 ( inName ) ) {
      FUNC8 ( stderr, "%s: Can't open input %s: %s.\n",
                progName, inName, FUNC13(errno) );
      FUNC12(1);
      return;
   }
   if ( srcMode != SM_I2O ) {
      FUNC0(inName, &statBuf);
      if ( FUNC1(statBuf.st_mode) ) {
         FUNC8( stderr,
                  "%s: Input file %s is a directory.\n",
                  progName,inName);
         FUNC12(1);
         return;
      }
   }

   switch ( srcMode ) {

      case SM_I2O:
         if ( FUNC9 ( FUNC6 ( stdin ) ) ) {
            FUNC8 ( stderr,
                      "%s: I won't read compressed data from a terminal.\n",
                      progName );
            FUNC8 ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            FUNC12(1);
            return;
         };
         inStr = stdin;
         break;

      case SM_F2O: case SM_F2F:
         inStr = FUNC7 ( inName, "rb" );
         if ( inStr == NULL ) {
            FUNC8 ( stderr, "%s: Can't open input file %s:%s.\n",
                      progName, inName, FUNC13(errno) );
            FUNC12(1);
            return;
         };
         break;

      default:
         FUNC11 ( "testf: bad srcMode" );
         break;
   }

   if (verbosity >= 1) {
      FUNC8 ( stderr, "  %s: ", inName );
      FUNC10 ( inName );
      FUNC4 ( stderr );
   }

   /*--- Now the input handle is sane.  Do the Biz. ---*/
   outputHandleJustInCase = NULL;
   allOK = FUNC14 ( inStr );

   if (allOK && verbosity >= 1) FUNC8 ( stderr, "ok\n" );
   if (!allOK) testFailsExist = True;
}