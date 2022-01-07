
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct floatformat {int dummy; } ;
typedef float DOUBLEST ;


 int convert_doublest_to_floatformat (struct floatformat const*,float const*,void*) ;
 int gdb_assert (int ) ;
 struct floatformat const* host_double_format ;
 struct floatformat const* host_float_format ;
 struct floatformat const* host_long_double_format ;
 int memcpy (void*,...) ;

void
floatformat_from_doublest (const struct floatformat *fmt,
      const DOUBLEST *in, void *out)
{
  gdb_assert (fmt != ((void*)0));
  if (fmt == host_float_format)
    {
      float val = *in;
      memcpy (out, &val, sizeof (val));
    }
  else if (fmt == host_double_format)
    {
      double val = *in;
      memcpy (out, &val, sizeof (val));
    }
  else if (fmt == host_long_double_format)
    {
      long double val = *in;
      memcpy (out, &val, sizeof (val));
    }
  else
    convert_doublest_to_floatformat (fmt, in, out);
}
