
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {unsigned long regstk_top; unsigned long rnat; } ;


 int memcpy (char*,char*,long) ;

__attribute__((used)) static void
ia64_copy_rbs (struct _Unwind_Context *info, unsigned long dst,
               unsigned long src, long len, unsigned long dst_rnat)
{
  long count;
  unsigned long src_rnat;
  unsigned long shift1, shift2;

  len <<= 3;
  dst_rnat &= (1UL << ((dst >> 3) & 0x3f)) - 1;
  src_rnat = src >= info->regstk_top
      ? info->rnat : *(unsigned long *) (src | 0x1f8);
  src_rnat &= ~((1UL << ((src >> 3) & 0x3f)) - 1);

  src_rnat &= ~(1UL << 63);
  shift1 = ((dst - src) >> 3) & 0x3f;
  if ((dst & 0x1f8) < (src & 0x1f8))
    shift1--;
  shift2 = 0x3f - shift1;
  if ((dst & 0x1f8) >= (src & 0x1f8))
    {
      count = ~dst & 0x1f8;
      goto first;
    }
  count = ~src & 0x1f8;
  goto second;
  while (len > 0)
    {
      src_rnat = src >= info->regstk_top
   ? info->rnat : *(unsigned long *) (src | 0x1f8);

      src_rnat &= ~(1UL << 63);
      count = shift2 << 3;
first:
      if (count > len)
        count = len;
      memcpy ((char *) dst, (char *) src, count);
      dst += count;
      src += count;
      len -= count;
      dst_rnat |= (src_rnat << shift1) & ~(1UL << 63);
      if (len <= 0)
        break;
      *(long *) dst = dst_rnat;
      dst += 8;
      dst_rnat = 0;
      count = shift1 << 3;
second:
      if (count > len)
        count = len;
      memcpy ((char *) dst, (char *) src, count);
      dst += count;
      src += count + 8;
      len -= count + 8;
      dst_rnat |= (src_rnat >> shift2);
    }
  if ((dst & 0x1f8) == 0x1f8)
    {
      *(long *) dst = dst_rnat;
      dst += 8;
      dst_rnat = 0;
    }


  info->regstk_top = dst & ~0x1ffUL;
  info->rnat = dst_rnat;
}
