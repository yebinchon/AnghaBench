
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ foo (int,int) ;

int
main(int argc, char **argv)
{
 return (foo(argc, (int)argv) == 0);
}
