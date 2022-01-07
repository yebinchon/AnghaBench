
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int histedit () ;
 int mflag ;
 int setinteractive () ;
 int setjobctl (int ) ;

void
optschanged(void)
{
 setinteractive();

 histedit();

 setjobctl(mflag);
}
