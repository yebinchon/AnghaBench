
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
identity_either_char_to_other (void *baton, int either_char, int *other_char)
{
  *other_char = either_char;
  return 1;
}
