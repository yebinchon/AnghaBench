
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHARSET_MAX ;
 int getXMLCharset (char*,char*) ;
 int printf (char*,char*) ;

int
main(int argc, char **argv)
{
  char buf[CHARSET_MAX];
  getXMLCharset(argv[1], buf);
  printf("charset = \"%s\"\n", buf);
  return 0;
}
