
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int dummy; } ;
typedef int DOUBLEST ;


 int floatformat_from_doublest (struct floatformat const*,int *,void*) ;
 struct floatformat* floatformat_from_length (int) ;
 int memset (void*,int ,int) ;
 int warning (char*,int) ;

__attribute__((used)) static void
store_floating_by_length (void *addr, int len, DOUBLEST val)
{
  const struct floatformat *fmt = floatformat_from_length (len);

  if (fmt == ((void*)0))
    {
      warning ("Can't store a floating-point number of %d bytes.", len);
      memset (addr, 0, len);
      return;
    }

  floatformat_from_doublest (fmt, &val, addr);
}
