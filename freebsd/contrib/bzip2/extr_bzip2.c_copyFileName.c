
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int FILE_NAME_LEN ;
 int exit (int ) ;
 int exitValue ;
 int fprintf (int ,char*,char*,int) ;
 int setExit (int) ;
 int stderr ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static
void copyFileName ( Char* to, Char* from )
{
   if ( strlen(from) > FILE_NAME_LEN-10 ) {
      fprintf (
         stderr,
         "bzip2: file name\n`%s'\n"
         "is suspiciously (more than %d chars) long.\n"
         "Try using a reasonable file name instead.  Sorry! :-)\n",
         from, FILE_NAME_LEN-10
      );
      setExit(1);
      exit(exitValue);
   }

  strncpy(to,from,FILE_NAME_LEN-10);
  to[FILE_NAME_LEN-10]='\0';
}
