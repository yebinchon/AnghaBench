
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_token ;


 int cpp_ideq (int const*,char*) ;

 int required_other ;
 int seen_errno ;
 int special_file_handling ;

void
recognized_extern (const cpp_token *name)
{
  switch (special_file_handling)
    {
    case 128:
      if (cpp_ideq (name, "errno"))
 seen_errno = 1, required_other--;
      break;

    default:
      break;
    }
}
