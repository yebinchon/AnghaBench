
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gen_funcs { ____Placeholder_gen_funcs } gen_funcs ;


 int GEN_FUNCS_C ;
 int GEN_FUNCS_H ;
 int errx (int,char*,char*) ;
 int extract_all_enums (int ,int) ;
 scalar_t__ extract_enum (int ,char*,int) ;
 int gen_all_enum_funcs (int ,int) ;
 scalar_t__ gen_enum_funcs_str (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
make_enums(int argc, char *argv[], enum gen_funcs gen_funcs)
{
 if (gen_funcs == GEN_FUNCS_C) {
  if (argc == 0)
   gen_all_enum_funcs(stdout, 1);
  else {
   for (int i = 0; i < argc; i++)
    if (gen_enum_funcs_str(stdout, argv[i]))
     errx(1, "enum not found: %s", argv[i]);
  }
 } else {
  if (argc == 0)
   extract_all_enums(stdout, gen_funcs == GEN_FUNCS_H);
  else {
   for (int i = 0; i < argc; i++)
    if (extract_enum(stdout, argv[i],
        gen_funcs == GEN_FUNCS_H))
     errx(1, "enum not found: %s", argv[i]);
  }
 }
}
