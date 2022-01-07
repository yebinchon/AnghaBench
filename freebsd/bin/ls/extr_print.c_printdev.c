
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;
typedef scalar_t__ dev_t ;


 int printf (char*,int ,int ) ;

__attribute__((used)) static void
printdev(size_t width, dev_t dev)
{

 (void)printf("%#*jx ", (u_int)width, (uintmax_t)dev);
}
