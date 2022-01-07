
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MY_STAT {int dummy; } ;
typedef scalar_t__ IntNative ;
typedef int Int32 ;


 scalar_t__ MY_STAT (int ,struct MY_STAT*) ;
 scalar_t__ OM_TEST ;
 scalar_t__ SM_F2F ;
 scalar_t__ deleteOutputOnInterrupt ;
 int exit (int ) ;
 int exitValue ;
 int fclose (int *) ;
 int fprintf (int ,char*,char*,...) ;
 int inName ;
 scalar_t__ noisy ;
 scalar_t__ numFileNames ;
 scalar_t__ numFilesProcessed ;
 scalar_t__ opMode ;
 char* outName ;
 int * outputHandleJustInCase ;
 char* progName ;
 scalar_t__ remove (char*) ;
 int setExit (int ) ;
 scalar_t__ srcMode ;
 int stderr ;

__attribute__((used)) static
void cleanUpAndFail ( Int32 ec )
{
   IntNative retVal;
   struct MY_STAT statBuf;

   if ( srcMode == SM_F2F
        && opMode != OM_TEST
        && deleteOutputOnInterrupt ) {






      retVal = MY_STAT ( inName, &statBuf );
      if (retVal == 0) {
         if (noisy)
            fprintf ( stderr,
                      "%s: Deleting output file %s, if it exists.\n",
                      progName, outName );
         if (outputHandleJustInCase != ((void*)0))
            fclose ( outputHandleJustInCase );
         retVal = remove ( outName );
         if (retVal != 0)
            fprintf ( stderr,
                      "%s: WARNING: deletion of output file "
                      "(apparently) failed.\n",
                      progName );
      } else {
         fprintf ( stderr,
                   "%s: WARNING: deletion of output file suppressed\n",
                    progName );
         fprintf ( stderr,
                   "%s:    since input file no longer exists.  Output file\n",
                   progName );
         fprintf ( stderr,
                   "%s:    `%s' may be incomplete.\n",
                   progName, outName );
         fprintf ( stderr,
                   "%s:    I suggest doing an integrity test (bzip2 -tv)"
                   " of it.\n",
                   progName );
      }
   }

   if (noisy && numFileNames > 0 && numFilesProcessed < numFileNames) {
      fprintf ( stderr,
                "%s: WARNING: some files have not been processed:\n"
                "%s:    %d specified on command line, %d not processed yet.\n\n",
                progName, progName,
                numFileNames, numFileNames - numFilesProcessed );
   }
   setExit(ec);
   exit(exitValue);
}
