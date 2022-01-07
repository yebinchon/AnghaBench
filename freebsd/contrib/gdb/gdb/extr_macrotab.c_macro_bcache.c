
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {scalar_t__ bcache; } ;


 void const* bcache (void const*,int,scalar_t__) ;
 int memcpy (void*,void const*,int) ;
 void* xmalloc (int) ;

__attribute__((used)) static const void *
macro_bcache (struct macro_table *t, const void *addr, int len)
{
  if (t->bcache)
    return bcache (addr, len, t->bcache);
  else
    {
      void *copy = xmalloc (len);
      memcpy (copy, addr, len);
      return copy;
    }
}
