
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readtoken () ;
 int tokpushback ;

__attribute__((used)) static int
peektoken(void)
{
 int t;

 t = readtoken();
 tokpushback++;
 return (t);
}
