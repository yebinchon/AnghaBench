
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indent ;
 int printf (char*) ;

__attribute__((used)) static void
p (void)
{
  int i;

  for (i = 0; i < indent; i++)
    printf ("| ");

  printf ("> ");
}
