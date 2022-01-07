
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ byte_get (int ,int) ;
 int printf (char*,unsigned long) ;

__attribute__((used)) static unsigned char *
display_block (unsigned char *data, unsigned long length)
{
  printf (_(" %lu byte block: "), length);

  while (length --)
    printf ("%lx ", (unsigned long) byte_get (data++, 1));

  return data;
}
