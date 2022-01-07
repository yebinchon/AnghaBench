
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdloop (int ) ;
 char* commandname ;
 int error (char*) ;
 int exitstatus ;
 char* find_dot_file (char*) ;
 int popfile () ;
 int setinputfile (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int
dotcmd(int argc, char **argv)
{
 char *filename, *fullname;

 if (argc < 2)
  error("missing filename");

 exitstatus = 0;





 filename = argc > 2 && strcmp(argv[1], "--") == 0 ? argv[2] : argv[1];

 fullname = find_dot_file(filename);
 setinputfile(fullname, 1);
 commandname = fullname;
 cmdloop(0);
 popfile();
 return exitstatus;
}
