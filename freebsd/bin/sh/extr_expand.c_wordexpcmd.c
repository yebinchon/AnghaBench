
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out1 ;
 int out1fmt (char*,int) ;
 int outbin (char*,scalar_t__,int ) ;
 scalar_t__ strlen (char*) ;

int
wordexpcmd(int argc, char **argv)
{
 size_t len;
 int i;

 out1fmt("%08x", argc - 1);
 for (i = 1, len = 0; i < argc; i++)
  len += strlen(argv[i]);
 out1fmt("%08x", (int)len);
 for (i = 1; i < argc; i++)
  outbin(argv[i], strlen(argv[i]) + 1, out1);
        return (0);
}
