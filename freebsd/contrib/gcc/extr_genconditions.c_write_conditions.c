
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts (char*) ;
 int traverse_c_tests (int ,int ) ;
 int write_one_condition ;

__attribute__((used)) static void
write_conditions (void)
{
  puts ("/* Structure definition duplicated from gensupport.h rather than\n   drag in that file and its dependencies.  */\nstruct c_test\n{\n  const char *expr;\n  int value;\n};\n\n/* This table lists each condition found in the machine description.\n   Each condition is mapped to its truth value (0 or 1), or -1 if that\n   cannot be calculated at compile time.\n   If we don't have __builtin_constant_p, or it's not acceptable in array\n   initializers, fall back to assuming that all conditions potentially\n   vary at run time.  It works in 3.0.1 and later; 3.0 only when not\n   optimizing.  */\n\n#if GCC_VERSION >= 3001\nstatic const struct c_test insn_conditions[] = {\n");
  traverse_c_tests (write_one_condition, 0);

  puts ("\n};\n#endif /* gcc >= 3.0.1 */\n");
}
