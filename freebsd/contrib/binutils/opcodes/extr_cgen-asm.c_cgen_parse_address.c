
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum cgen_parse_operand_result { ____Placeholder_cgen_parse_operand_result } cgen_parse_operand_result ;
typedef int bfd_vma ;
struct TYPE_4__ {char* (* parse_operand_fn ) (TYPE_1__*,int ,char const**,int,int,int*,int *) ;} ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int CGEN_PARSE_OPERAND_ADDRESS ;
 char* stub1 (TYPE_1__*,int ,char const**,int,int,int*,int *) ;

const char *
cgen_parse_address (CGEN_CPU_DESC cd,
      const char **strp,
      int opindex,
      int opinfo,
      enum cgen_parse_operand_result *resultp,
      bfd_vma *valuep)
{
  bfd_vma value;
  enum cgen_parse_operand_result result_type;
  const char *errmsg;

  errmsg = (* cd->parse_operand_fn)
    (cd, CGEN_PARSE_OPERAND_ADDRESS, strp, opindex, opinfo,
     &result_type, &value);

  if (!errmsg)
    {
      if (resultp != ((void*)0))
 *resultp = result_type;
      *valuep = value;
    }
  return errmsg;
}
