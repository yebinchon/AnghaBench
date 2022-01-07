
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
pe_as32 (void *ptr)
{
  unsigned char *b = ptr;

  return b[0] + (b[1] << 8) + (b[2] << 16) + (b[3] << 24);
}
