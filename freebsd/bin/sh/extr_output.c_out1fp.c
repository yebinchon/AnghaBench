
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int doformat_wr ;
 int * fwopen (int ,int ) ;
 int out1 ;

FILE *
out1fp(void)
{
 return fwopen(out1, doformat_wr);
}
