
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cadvise () ;
 int cleanUpAndFail (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ noisy ;
 int perror (char*) ;
 char* progName ;
 int showFileNames () ;
 int stderr ;

__attribute__((used)) static
void compressedStreamEOF ( void )
{
  if (noisy) {
    fprintf ( stderr,
       "\n%s: Compressed file ends unexpectedly;\n\t"
       "perhaps it is corrupted?  *Possible* reason follows.\n",
       progName );
    perror ( progName );
    showFileNames();
    cadvise();
  }
  cleanUpAndFail( 2 );
}
