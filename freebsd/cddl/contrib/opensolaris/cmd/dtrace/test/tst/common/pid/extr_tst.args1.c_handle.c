
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int go (int ,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void
handle(int sig)
{
 go(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
 exit(0);
}
