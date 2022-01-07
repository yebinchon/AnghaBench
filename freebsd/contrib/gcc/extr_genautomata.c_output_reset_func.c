
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* INTERNAL_RESET_FUNC_NAME ;
 char* RESET_FUNC_NAME ;
 char* STATE_NAME ;
 char* STATE_TYPE_NAME ;
 int fprintf (int ,char*,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_reset_func (void)
{
  fprintf (output_file, "void\n%s (%s %s)\n",
    RESET_FUNC_NAME, STATE_TYPE_NAME, STATE_NAME);
  fprintf (output_file, "{\n  %s (%s);\n}\n\n", INTERNAL_RESET_FUNC_NAME,
    STATE_NAME);
}
