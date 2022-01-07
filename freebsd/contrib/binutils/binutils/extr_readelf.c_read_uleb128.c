
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
read_uleb128 (unsigned char *p, unsigned int *plen)
{
  unsigned char c;
  unsigned int val;
  int shift;
  int len;

  val = 0;
  shift = 0;
  len = 0;
  do
    {
      c = *(p++);
      len++;
      val |= ((unsigned int)c & 0x7f) << shift;
      shift += 7;
    }
  while (c & 0x80);

  *plen = len;
  return val;
}
