
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ reg; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int NS_DDI ;
 int NS_FFI ;
 int NS_QQI ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int do_vfp_nsyn_opcode (char const*) ;
 TYPE_2__ inst ;
 int memset (TYPE_1__*,char,int) ;

__attribute__((used)) static void
do_vfp_nsyn_cvt (enum neon_shape rs, int flavour)
{
  const char *opname = 0;

  if (rs == NS_DDI || rs == NS_QQI || rs == NS_FFI)
    {

      const char *enc[] =
        {
          "ftosls",
          "ftouls",
          "fsltos",
          "fultos",
          ((void*)0),
          ((void*)0),
          "ftosld",
          "ftould",
          "fsltod",
          "fultod",
          "fshtos",
          "fuhtos",
          "fshtod",
          "fuhtod",
          "ftoshs",
          "ftouhs",
          "ftoshd",
          "ftouhd"
        };

      if (flavour >= 0 && flavour < (int) ARRAY_SIZE (enc))
        {
          opname = enc[flavour];
          constraint (inst.operands[0].reg != inst.operands[1].reg,
                      _("operands 0 and 1 must be the same register"));
          inst.operands[1] = inst.operands[2];
          memset (&inst.operands[2], '\0', sizeof (inst.operands[2]));
        }
    }
  else
    {

      const char *enc[] =
        {
          "ftosizs",
          "ftouizs",
          "fsitos",
          "fuitos",
          "fcvtsd",
          "fcvtds",
          "ftosizd",
          "ftouizd",
          "fsitod",
          "fuitod"
        };

      if (flavour >= 0 && flavour < (int) ARRAY_SIZE (enc))
        opname = enc[flavour];
    }

  if (opname)
    do_vfp_nsyn_opcode (opname);
}
