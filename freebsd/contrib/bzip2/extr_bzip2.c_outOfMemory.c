
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanUpAndFail (int) ;
 int fprintf (int ,char*,char*) ;
 char* progName ;
 int showFileNames () ;
 int stderr ;

__attribute__((used)) static
void outOfMemory ( void )
{
   fprintf ( stderr,
             "\n%s: couldn't allocate enough memory\n",
             progName );
   showFileNames();
   cleanUpAndFail(1);
}
