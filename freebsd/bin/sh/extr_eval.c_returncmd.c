
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIPRETURN ;
 int evalskip ;
 int number (char*) ;
 int oexitstatus ;
 int skipcount ;

int
returncmd(int argc, char **argv)
{
 int ret = argc > 1 ? number(argv[1]) : oexitstatus;

 evalskip = SKIPRETURN;
 skipcount = 1;
 return ret;
}
