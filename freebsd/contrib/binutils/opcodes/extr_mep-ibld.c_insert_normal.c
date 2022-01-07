
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ min_insn_bitsize; scalar_t__ base_insn_bitsize; } ;
typedef unsigned long* CGEN_INSN_BYTES_PTR ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 scalar_t__ CGEN_BOOL_ATTR (unsigned int,int ) ;
 int CGEN_IFLD_SIGNED ;
 int CGEN_IFLD_SIGN_OPT ;
 scalar_t__ CGEN_INSN_LSB0_P ;
 char* _ (char*) ;
 int abort () ;
 int cgen_signed_overflow_ok_p (TYPE_1__*) ;
 int insert_1 (TYPE_1__*,long,unsigned int,unsigned int,unsigned int,unsigned char*) ;
 int sprintf (char*,char*,long,long,...) ;

__attribute__((used)) static const char *
insert_normal (CGEN_CPU_DESC cd,
        long value,
        unsigned int attrs,
        unsigned int word_offset,
        unsigned int start,
        unsigned int length,
        unsigned int word_length,
        unsigned int total_length,
        CGEN_INSN_BYTES_PTR buffer)
{
  static char errbuf[100];

  unsigned long mask = (((1L << (length - 1)) - 1) << 1) | 1;


  if (length == 0)
    return ((void*)0);

  if (word_length > 32)
    abort ();



  if (cd->min_insn_bitsize < cd->base_insn_bitsize)
    {
      if (word_offset == 0
   && word_length > total_length)
 word_length = total_length;
    }


  if (CGEN_BOOL_ATTR (attrs, CGEN_IFLD_SIGN_OPT))
    {
      long minval = - (1L << (length - 1));
      unsigned long maxval = mask;

      if ((value > 0 && (unsigned long) value > maxval)
   || value < minval)
 {

   sprintf (errbuf,
     _("operand out of range (%ld not between %ld and %lu)"),
     value, minval, maxval);
   return errbuf;
 }
    }
  else if (! CGEN_BOOL_ATTR (attrs, CGEN_IFLD_SIGNED))
    {
      unsigned long maxval = mask;
      unsigned long val = (unsigned long) value;





      if (sizeof (unsigned long) > 4 && ((value >> 32) == -1))
 val &= 0xFFFFFFFF;

      if (val > maxval)
 {

   sprintf (errbuf,
     _("operand out of range (0x%lx not between 0 and 0x%lx)"),
     val, maxval);
   return errbuf;
 }
    }
  else
    {
      if (! cgen_signed_overflow_ok_p (cd))
 {
   long minval = - (1L << (length - 1));
   long maxval = (1L << (length - 1)) - 1;

   if (value < minval || value > maxval)
     {
       sprintf

  (errbuf, _("operand out of range (%ld not between %ld and %ld)"),
   value, minval, maxval);
       return errbuf;
     }
 }
    }
  {
    unsigned char *bufp = (unsigned char *) buffer + word_offset / 8;

    insert_1 (cd, value, start, length, word_length, bufp);
  }



  return ((void*)0);
}
