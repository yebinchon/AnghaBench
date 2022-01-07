
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MY_STAT {int st_mode; } ;
typedef int FILE ;
typedef int Char ;
typedef scalar_t__ Bool ;


 int False ;
 int MY_STAT (char*,struct MY_STAT*) ;
 scalar_t__ MY_S_ISDIR (int ) ;



 int True ;
 scalar_t__ containsDubiousChars (char*) ;
 int copyFileName (char*,int *) ;
 int deleteOutputOnInterrupt ;
 int errno ;
 int fflush (int ) ;
 int fileExists (char*) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 char* inName ;
 int isatty (int ) ;
 scalar_t__ noisy ;
 char* outName ;
 int * outputHandleJustInCase ;
 int pad (char*) ;
 int panic (char*) ;
 char* progName ;
 int setExit (int) ;
 int srcMode ;
 int stderr ;
 int * stdin ;
 char* strerror (int ) ;
 int testFailsExist ;
 scalar_t__ testStream (int *) ;
 int verbosity ;

__attribute__((used)) static
void testf ( Char *name )
{
   FILE *inStr;
   Bool allOK;
   struct MY_STAT statBuf;

   deleteOutputOnInterrupt = False;

   if (name == ((void*)0) && srcMode != 128)
      panic ( "testf: bad modes\n" );

   copyFileName ( outName, (Char*)"(none)" );
   switch (srcMode) {
      case 128: copyFileName ( inName, (Char*)"(stdin)" ); break;
      case 130: copyFileName ( inName, name ); break;
      case 129: copyFileName ( inName, name ); break;
   }

   if ( srcMode != 128 && containsDubiousChars ( inName ) ) {
      if (noisy)
      fprintf ( stderr, "%s: There are no files matching `%s'.\n",
                progName, inName );
      setExit(1);
      return;
   }
   if ( srcMode != 128 && !fileExists ( inName ) ) {
      fprintf ( stderr, "%s: Can't open input %s: %s.\n",
                progName, inName, strerror(errno) );
      setExit(1);
      return;
   }
   if ( srcMode != 128 ) {
      MY_STAT(inName, &statBuf);
      if ( MY_S_ISDIR(statBuf.st_mode) ) {
         fprintf( stderr,
                  "%s: Input file %s is a directory.\n",
                  progName,inName);
         setExit(1);
         return;
      }
   }

   switch ( srcMode ) {

      case 128:
         if ( isatty ( fileno ( stdin ) ) ) {
            fprintf ( stderr,
                      "%s: I won't read compressed data from a terminal.\n",
                      progName );
            fprintf ( stderr, "%s: For help, type: `%s --help'.\n",
                              progName, progName );
            setExit(1);
            return;
         };
         inStr = stdin;
         break;

      case 129: case 130:
         inStr = fopen ( inName, "rb" );
         if ( inStr == ((void*)0) ) {
            fprintf ( stderr, "%s: Can't open input file %s:%s.\n",
                      progName, inName, strerror(errno) );
            setExit(1);
            return;
         };
         break;

      default:
         panic ( "testf: bad srcMode" );
         break;
   }

   if (verbosity >= 1) {
      fprintf ( stderr, "  %s: ", inName );
      pad ( inName );
      fflush ( stderr );
   }


   outputHandleJustInCase = ((void*)0);
   allOK = testStream ( inStr );

   if (allOK && verbosity >= 1) fprintf ( stderr, "ok\n" );
   if (!allOK) testFailsExist = True;
}
