
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct floatformat {int dummy; } ;
typedef int DOUBLEST ;


 scalar_t__ TYPE_CODE (struct type const*) ;
 scalar_t__ TYPE_CODE_FLT ;
 int TYPE_LENGTH (struct type const*) ;
 int floatformat_from_doublest (struct floatformat const*,int *,void*) ;
 struct floatformat* floatformat_from_type (struct type const*) ;
 int floatformat_to_doublest (struct floatformat const*,void const*,int *) ;
 int gdb_assert (int) ;
 int memcpy (void*,void const*,int ) ;
 int memset (void*,int ,int ) ;
 int min (int ,int ) ;
 int warning (char*) ;

void
convert_typed_floating (const void *from, const struct type *from_type,
                        void *to, const struct type *to_type)
{
  const struct floatformat *from_fmt = floatformat_from_type (from_type);
  const struct floatformat *to_fmt = floatformat_from_type (to_type);

  gdb_assert (TYPE_CODE (from_type) == TYPE_CODE_FLT);
  gdb_assert (TYPE_CODE (to_type) == TYPE_CODE_FLT);

  if (from_fmt == ((void*)0) || to_fmt == ((void*)0))
    {







      warning ("Can't convert floating-point number to desired type.");
      memset (to, 0, TYPE_LENGTH (to_type));
    }
  else if (from_fmt == to_fmt)
    {






      memset (to, 0, TYPE_LENGTH (to_type));
      memcpy (to, from, min (TYPE_LENGTH (from_type), TYPE_LENGTH (to_type)));
    }
  else
    {




      DOUBLEST d;

      floatformat_to_doublest (from_fmt, from, &d);
      floatformat_from_doublest (to_fmt, &d, to);
    }
}
