
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 char fill_char ;
 int strlen (char*) ;

__attribute__((used)) static void
f_fillchar(char *arg)
{

 if (strlen(arg) != 1)
  errx(1, "need exactly one fill char");

 fill_char = arg[0];
}
