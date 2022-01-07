
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct real_format {int p; int emin; int emax; } ;


 struct real_format* REAL_MODE_FORMAT (int ) ;
 int TYPE_MODE (int ) ;
 int builtin_define_with_int_value (char*,int) ;
 int builtin_define_with_value (char*,char*,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
builtin_define_decimal_float_constants (const char *name_prefix,
     const char *suffix,
     tree type)
{
  const struct real_format *fmt;
  char name[64], buf[128], *p;
  int digits;

  fmt = REAL_MODE_FORMAT (TYPE_MODE (type));


  sprintf (name, "__%s_MANT_DIG__", name_prefix);
  builtin_define_with_int_value (name, fmt->p);


  sprintf (name, "__%s_MIN_EXP__", name_prefix);
  sprintf (buf, "(%d)", fmt->emin);
  builtin_define_with_value (name, buf, 0);


  sprintf (name, "__%s_MAX_EXP__", name_prefix);
  builtin_define_with_int_value (name, fmt->emax);


  sprintf (name, "__%s_MIN__", name_prefix);
  sprintf (buf, "1E%d%s", fmt->emin, suffix);
  builtin_define_with_value (name, buf, 0);


  sprintf (name, "__%s_MAX__", name_prefix);
  p = buf;
  for (digits = fmt->p; digits; digits--)
    {
      *p++ = '9';
      if (digits == fmt->p)
 *p++ = '.';
    }
  *p = 0;

  sprintf (&buf[fmt->p + 1], "E%d%s", fmt->emax, suffix);
  builtin_define_with_value (name, buf, 0);



  sprintf (name, "__%s_EPSILON__", name_prefix);
  sprintf (buf, "1E-%d%s", fmt->p - 1, suffix);
  builtin_define_with_value (name, buf, 0);


  sprintf (name, "__%s_DEN__", name_prefix);
  p = buf;
  for (digits = fmt->p; digits > 1; digits--)
    {
      *p++ = '0';
      if (digits == fmt->p)
 *p++ = '.';
    }
  *p = 0;
  sprintf (&buf[fmt->p], "1E%d%s", fmt->emin, suffix);
  builtin_define_with_value (name, buf, 0);
}
