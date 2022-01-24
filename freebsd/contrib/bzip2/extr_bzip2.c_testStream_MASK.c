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
typedef  int /*<<< orphan*/  UChar ;
typedef  size_t Int32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ Bool ;
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,void**,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (size_t*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,size_t) ; 
#define  BZ_CONFIG_ERROR 133 
#define  BZ_DATA_ERROR 132 
#define  BZ_DATA_ERROR_MAGIC 131 
#define  BZ_IO_ERROR 130 
 int BZ_MAX_UNUSED ; 
#define  BZ_MEM_ERROR 129 
 size_t BZ_OK ; 
 size_t BZ_STREAM_END ; 
#define  BZ_UNEXPECTED_EOF 128 
 size_t EOF ; 
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 char* inName ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noisy ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* progName ; 
 scalar_t__ smallMode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int verbosity ; 

__attribute__((used)) static 
Bool FUNC13 ( FILE *zStream )
{
   BZFILE* bzf = NULL;
   Int32   bzerr, bzerr_dummy, ret, streamNo, i;
   UChar   obuf[5000];
   UChar   unused[BZ_MAX_UNUSED];
   Int32   nUnused;
   void*   unusedTmpV;
   UChar*  unusedTmp;

   nUnused = 0;
   streamNo = 0;

   FUNC4(zStream);
   if (FUNC7(zStream)) goto errhandler_io;

   while (True) {

      bzf = FUNC3 ( 
               &bzerr, zStream, verbosity, 
               (int)smallMode, unused, nUnused
            );
      if (bzf == NULL || bzerr != BZ_OK) goto errhandler;
      streamNo++;

      while (bzerr == BZ_OK) {
         FUNC0 ( &bzerr, bzf, obuf, 5000 );
         if (bzerr == BZ_DATA_ERROR_MAGIC) goto errhandler;
      }
      if (bzerr != BZ_STREAM_END) goto errhandler;

      FUNC2 ( &bzerr, bzf, &unusedTmpV, &nUnused );
      if (bzerr != BZ_OK) FUNC12 ( "test:bzReadGetUnused" );

      unusedTmp = (UChar*)unusedTmpV;
      for (i = 0; i < nUnused; i++) unused[i] = unusedTmp[i];

      FUNC1 ( &bzerr, bzf );
      if (bzerr != BZ_OK) FUNC12 ( "test:bzReadGetUnused" );
      if (nUnused == 0 && FUNC10(zStream)) break;

   }

   if (FUNC7(zStream)) goto errhandler_io;
   ret = FUNC6 ( zStream );
   if (ret == EOF) goto errhandler_io;

   if (verbosity >= 2) FUNC8 ( stderr, "\n    " );
   return True;

   errhandler:
   FUNC1 ( &bzerr_dummy, bzf );
   if (verbosity == 0) 
      FUNC8 ( stderr, "%s: %s: ", progName, inName );
   switch (bzerr) {
      case BZ_CONFIG_ERROR:
         FUNC5(); break;
      case BZ_IO_ERROR:
         errhandler_io:
         FUNC9(); break;
      case BZ_DATA_ERROR:
         FUNC8 ( stderr,
                   "data integrity (CRC) error in data\n" );
         return False;
      case BZ_MEM_ERROR:
         FUNC11();
      case BZ_UNEXPECTED_EOF:
         FUNC8 ( stderr,
                   "file ends unexpectedly\n" );
         return False;
      case BZ_DATA_ERROR_MAGIC:
         if (zStream != stdin) FUNC6(zStream);
         if (streamNo == 1) {
          FUNC8 ( stderr, 
                    "bad magic number (file not created by bzip2)\n" );
            return False;
         } else {
            if (noisy)
            FUNC8 ( stderr, 
                      "trailing garbage after EOF ignored\n" );
            return True;       
         }
      default:
         FUNC12 ( "test:unexpected error" );
   }

   FUNC12 ( "test:end" );
   return True; /*notreached*/
}