
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exitstatus ;
 int out2fmt_flush (char*,char*) ;

int
bltincmd(int argc, char **argv)
{
 if (argc > 1) {
  out2fmt_flush("%s: not found\n", argv[1]);
  return 127;
 }




 return exitstatus;
}
