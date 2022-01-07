
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static int *
nints (int x)
{
  return (int *) (xcalloc (sizeof (int), x));
}
