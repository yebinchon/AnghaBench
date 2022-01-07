
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct real_format {scalar_t__ qnan_msb_set; } ;
struct TYPE_9__ {scalar_t__ cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int do_add (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;
 int encode_ieee_double (struct real_format const*,long*,TYPE_1__*) ;
 struct real_format ieee_double_format ;
 struct real_format mips_double_format ;
 int normalize (TYPE_1__*) ;
 int round_for_format (struct real_format const*,TYPE_1__*) ;
 scalar_t__ rvc_normal ;

__attribute__((used)) static void
encode_ibm_extended (const struct real_format *fmt, long *buf,
       const REAL_VALUE_TYPE *r)
{
  REAL_VALUE_TYPE u, normr, v;
  const struct real_format *base_fmt;

  base_fmt = fmt->qnan_msb_set ? &ieee_double_format : &mips_double_format;


  normr = *r;
  if (normr.cl == rvc_normal)
    normalize (&normr);


  u = normr;
  round_for_format (base_fmt, &u);
  encode_ieee_double (base_fmt, &buf[0], &u);

  if (u.cl == rvc_normal)
    {
      do_add (&v, &normr, &u, 1);

      round_for_format (base_fmt, &v);
      encode_ieee_double (base_fmt, &buf[2], &v);
    }
  else
    {


      buf[2] = 0;
      buf[3] = 0;
    }
}
