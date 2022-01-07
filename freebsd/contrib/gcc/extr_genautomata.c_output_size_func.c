
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CHIP_NAME ;
 char* SIZE_FUNC_NAME ;
 int fprintf (int ,char*,char*) ;
 int output_file ;

__attribute__((used)) static void
output_size_func (void)
{
  fprintf (output_file, "int\n%s (void)\n", SIZE_FUNC_NAME);
  fprintf (output_file, "{\n  return sizeof (struct %s);\n}\n\n", CHIP_NAME);
}
