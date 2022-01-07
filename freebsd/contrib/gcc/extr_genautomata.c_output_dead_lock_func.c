
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEAD_LOCK_FUNC_NAME ;
 char* INTERNAL_DEAD_LOCK_FUNC_NAME ;
 char* STATE_NAME ;
 char* STATE_TYPE_NAME ;
 int fprintf (int ,char*,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_dead_lock_func (void)
{
  fprintf (output_file, "int\n%s (%s %s)\n",
    DEAD_LOCK_FUNC_NAME, STATE_TYPE_NAME, STATE_NAME);
  fprintf (output_file, "{\n  return %s (%s);\n}\n\n",
    INTERNAL_DEAD_LOCK_FUNC_NAME, STATE_NAME);
}
