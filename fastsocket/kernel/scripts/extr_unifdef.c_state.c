
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Ifstate ;


 size_t depth ;
 int * ifstate ;

__attribute__((used)) static void
state(Ifstate is)
{
 ifstate[depth] = is;
}
