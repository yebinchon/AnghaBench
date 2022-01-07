
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int error (char*,...) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char* line ;
 int output (char*) ;
 int parsefield () ;
 int parsenode () ;
 scalar_t__ readline (int *) ;
 char* strerror (int ) ;

int
main(int argc, char *argv[])
{
 FILE *infp;

 if (argc != 3)
  error("usage: mknodes file");
 if ((infp = fopen(argv[1], "r")) == ((void*)0))
  error("Can't open %s: %s", argv[1], strerror(errno));
 while (readline(infp)) {
  if (line[0] == ' ' || line[0] == '\t')
   parsefield();
  else if (line[0] != '\0')
   parsenode();
 }
 fclose(infp);
 output(argv[2]);
 exit(0);
}
