
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HAVE_32BIT_GPRS ;
 int macro_build (int *,char*,char*,int,int,int ) ;

__attribute__((used)) static void
move_register (int dest, int source)
{
  macro_build (((void*)0), HAVE_32BIT_GPRS ? "addu" : "daddu", "d,v,t",
        dest, source, 0);
}
