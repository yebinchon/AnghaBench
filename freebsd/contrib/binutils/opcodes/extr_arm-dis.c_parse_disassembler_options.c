
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char) ;
 int parse_arm_disassembler_option (char*) ;

__attribute__((used)) static void
parse_disassembler_options (char *options)
{
  if (options == ((void*)0))
    return;

  while (*options)
    {
      parse_arm_disassembler_option (options);


      while ((*options) && (! ISSPACE (*options)) && (*options != ','))
 ++ options;

      while (ISSPACE (*options) || (*options == ','))
 ++ options;
    }
}
