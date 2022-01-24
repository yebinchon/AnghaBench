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
typedef  scalar_t__ Int32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ Bool ;
typedef  int /*<<< orphan*/  BZFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,void**,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,scalar_t__) ; 
#define  BZ_CONFIG_ERROR 133 
#define  BZ_DATA_ERROR 132 
#define  BZ_DATA_ERROR_MAGIC 131 
#define  BZ_IO_ERROR 130 
 int BZ_MAX_UNUSED ; 
#define  BZ_MEM_ERROR 129 
 scalar_t__ BZ_OK ; 
 scalar_t__ BZ_STREAM_END ; 
#define  BZ_UNEXPECTED_EOF 128 
 scalar_t__ EOF ; 
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ forceOverwrite ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 char* inName ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noisy ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * outputHandleJustInCase ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* progName ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ smallMode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int verbosity ; 

__attribute__((used)) static 
Bool FUNC21 ( FILE *zStream, FILE *stream )
{
   BZFILE* bzf = NULL;
   Int32   bzerr, bzerr_dummy, ret, nread, streamNo, i;
   UChar   obuf[5000];
   UChar   unused[BZ_MAX_UNUSED];
   Int32   nUnused;
   void*   unusedTmpV;
   UChar*  unusedTmp;

   nUnused = 0;
   streamNo = 0;

   FUNC4(stream);
   FUNC4(zStream);

   if (FUNC10(stream)) goto errhandler_io;
   if (FUNC10(zStream)) goto errhandler_io;

   while (True) {

      bzf = FUNC3 ( 
               &bzerr, zStream, verbosity, 
               (int)smallMode, unused, nUnused
            );
      if (bzf == NULL || bzerr != BZ_OK) goto errhandler;
      streamNo++;

      while (bzerr == BZ_OK) {
         nread = FUNC0 ( &bzerr, bzf, obuf, 5000 );
         if (bzerr == BZ_DATA_ERROR_MAGIC) goto trycat;
         if ((bzerr == BZ_OK || bzerr == BZ_STREAM_END) && nread > 0)
            FUNC15 ( obuf, sizeof(UChar), nread, stream );
         if (FUNC10(stream)) goto errhandler_io;
      }
      if (bzerr != BZ_STREAM_END) goto errhandler;

      FUNC2 ( &bzerr, bzf, &unusedTmpV, &nUnused );
      if (bzerr != BZ_OK) FUNC19 ( "decompress:bzReadGetUnused" );

      unusedTmp = (UChar*)unusedTmpV;
      for (i = 0; i < nUnused; i++) unused[i] = unusedTmp[i];

      FUNC1 ( &bzerr, bzf );
      if (bzerr != BZ_OK) FUNC19 ( "decompress:bzReadGetUnused" );

      if (nUnused == 0 && FUNC17(zStream)) break;
   }

   closeok:
   if (FUNC10(zStream)) goto errhandler_io;
   if (stream != stdout) {
      Int32 fd = FUNC12 ( stream );
      if (fd < 0) goto errhandler_io;
      FUNC5 ( fd );
   }
   ret = FUNC9 ( zStream );
   if (ret == EOF) goto errhandler_io;

   if (FUNC10(stream)) goto errhandler_io;
   ret = FUNC11 ( stream );
   if (ret != 0) goto errhandler_io;
   if (stream != stdout) {
      ret = FUNC9 ( stream );
      outputHandleJustInCase = NULL;
      if (ret == EOF) goto errhandler_io;
   }
   outputHandleJustInCase = NULL;
   if (verbosity >= 2) FUNC13 ( stderr, "\n    " );
   return True;

   trycat: 
   if (forceOverwrite) {
      FUNC20(zStream);
      while (True) {
      	 if (FUNC17(zStream)) break;
      	 nread = FUNC14 ( obuf, sizeof(UChar), 5000, zStream );
      	 if (FUNC10(zStream)) goto errhandler_io;
      	 if (nread > 0) FUNC15 ( obuf, sizeof(UChar), nread, stream );
      	 if (FUNC10(stream)) goto errhandler_io;
      }
      goto closeok;
   }
  
   errhandler:
   FUNC1 ( &bzerr_dummy, bzf );
   switch (bzerr) {
      case BZ_CONFIG_ERROR:
         FUNC7(); break;
      case BZ_IO_ERROR:
         errhandler_io:
         FUNC16(); break;
      case BZ_DATA_ERROR:
         FUNC8();
      case BZ_MEM_ERROR:
         FUNC18();
      case BZ_UNEXPECTED_EOF:
         FUNC6();
      case BZ_DATA_ERROR_MAGIC:
         if (zStream != stdin) FUNC9(zStream);
         if (stream != stdout) FUNC9(stream);
         if (streamNo == 1) {
            return False;
         } else {
            if (noisy)
            FUNC13 ( stderr, 
                      "\n%s: %s: trailing garbage after EOF ignored\n",
                      progName, inName );
            return True;       
         }
      default:
         FUNC19 ( "decompress:unexpected error" );
   }

   FUNC19 ( "decompress:end" );
   return True; /*notreached*/
}