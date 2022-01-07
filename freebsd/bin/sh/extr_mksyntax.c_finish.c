
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfile ;
 int fputs (char*,int ) ;

__attribute__((used)) static void
finish(void)
{
 fputs("};\n", cfile);
}
