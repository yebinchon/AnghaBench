
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ numutypes ;
 int * utypes ;
 int xfree (int *) ;

__attribute__((used)) static void
free_utypes (void *dummy)
{
  xfree (utypes);
  utypes = ((void*)0);
  numutypes = 0;
}
