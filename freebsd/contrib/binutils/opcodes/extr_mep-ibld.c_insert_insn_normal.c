
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_7__ {char* (* insert_operand ) (TYPE_1__*,int ,int *,int ,int ) ;scalar_t__ base_insn_bitsize; } ;
typedef scalar_t__ CGEN_SYNTAX_CHAR_TYPE ;
typedef int CGEN_SYNTAX ;
typedef int CGEN_INSN_BYTES_PTR ;
typedef int CGEN_INSN ;
typedef int CGEN_FIELDS ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 scalar_t__ CGEN_FIELDS_BITSIZE (int *) ;
 int CGEN_INIT_INSERT (TYPE_1__*) ;
 unsigned long CGEN_INSN_BASE_VALUE (int const*) ;
 int * CGEN_INSN_SYNTAX (int const*) ;
 scalar_t__ CGEN_SYNTAX_CHAR_P (scalar_t__ const) ;
 int CGEN_SYNTAX_FIELD (scalar_t__ const) ;
 scalar_t__* CGEN_SYNTAX_STRING (int const*) ;
 int cgen_put_insn_value (TYPE_1__*,int ,int ,unsigned long) ;
 int min (unsigned int,unsigned int) ;
 int put_insn_int_value (TYPE_1__*,int ,scalar_t__,scalar_t__,unsigned long) ;
 char* stub1 (TYPE_1__*,int ,int *,int ,int ) ;

__attribute__((used)) static const char *
insert_insn_normal (CGEN_CPU_DESC cd,
      const CGEN_INSN * insn,
      CGEN_FIELDS * fields,
      CGEN_INSN_BYTES_PTR buffer,
      bfd_vma pc)
{
  const CGEN_SYNTAX *syntax = CGEN_INSN_SYNTAX (insn);
  unsigned long value;
  const CGEN_SYNTAX_CHAR_TYPE * syn;

  CGEN_INIT_INSERT (cd);
  value = CGEN_INSN_BASE_VALUE (insn);
  cgen_put_insn_value (cd, buffer, min ((unsigned) cd->base_insn_bitsize,
     (unsigned) CGEN_FIELDS_BITSIZE (fields)),
         value);
  for (syn = CGEN_SYNTAX_STRING (syntax); * syn; ++ syn)
    {
      const char *errmsg;

      if (CGEN_SYNTAX_CHAR_P (* syn))
 continue;

      errmsg = (* cd->insert_operand) (cd, CGEN_SYNTAX_FIELD (*syn),
           fields, buffer, pc);
      if (errmsg)
 return errmsg;
    }

  return ((void*)0);
}
