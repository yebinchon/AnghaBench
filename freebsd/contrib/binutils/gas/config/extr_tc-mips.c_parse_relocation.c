
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percent_op_match {int str; int reloc; } ;
typedef int bfd_reloc_code_real_type ;
typedef int bfd_boolean ;
struct TYPE_2__ {scalar_t__ mips16; } ;


 size_t ARRAY_SIZE (struct percent_op_match*) ;
 int BFD_RELOC_UNUSED ;
 int FALSE ;
 int ISSPACE (char) ;
 int TRUE ;
 int as_bad (char*,int ) ;
 int bfd_reloc_type_lookup (int ,int ) ;
 struct percent_op_match* mips16_percent_op ;
 TYPE_1__ mips_opts ;
 struct percent_op_match* mips_percent_op ;
 int stdoutput ;
 int strlen (int ) ;
 scalar_t__ strncasecmp (char*,int ,int) ;

__attribute__((used)) static bfd_boolean
parse_relocation (char **str, bfd_reloc_code_real_type *reloc)
{
  const struct percent_op_match *percent_op;
  size_t limit, i;

  if (mips_opts.mips16)
    {
      percent_op = mips16_percent_op;
      limit = ARRAY_SIZE (mips16_percent_op);
    }
  else
    {
      percent_op = mips_percent_op;
      limit = ARRAY_SIZE (mips_percent_op);
    }

  for (i = 0; i < limit; i++)
    if (strncasecmp (*str, percent_op[i].str, strlen (percent_op[i].str)) == 0)
      {
 int len = strlen (percent_op[i].str);

 if (!ISSPACE ((*str)[len]) && (*str)[len] != '(')
   continue;

 *str += strlen (percent_op[i].str);
 *reloc = percent_op[i].reloc;



 if (!bfd_reloc_type_lookup (stdoutput, percent_op[i].reloc))
   {
     as_bad ("relocation %s isn't supported by the current ABI",
      percent_op[i].str);
     *reloc = BFD_RELOC_UNUSED;
   }
 return TRUE;
      }
  return FALSE;
}
