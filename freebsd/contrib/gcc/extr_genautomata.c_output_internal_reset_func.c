
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CHIP_NAME ;
 char* CHIP_PARAMETER_NAME ;
 char* INTERNAL_RESET_FUNC_NAME ;
 int fprintf (int ,char*,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_internal_reset_func (void)
{
  fprintf (output_file, "static inline void\n%s (struct %s *%s)\n",
    INTERNAL_RESET_FUNC_NAME, CHIP_NAME, CHIP_PARAMETER_NAME);
  fprintf (output_file, "{\n  memset (%s, 0, sizeof (struct %s));\n}\n\n",
    CHIP_PARAMETER_NAME, CHIP_NAME);
}
