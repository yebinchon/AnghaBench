#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 int NS_DDI ; 
 int NS_FFI ; 
 int NS_QQI ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char,int) ; 

__attribute__((used)) static void
FUNC5 (enum neon_shape rs, int flavour)
{
  const char *opname = 0;
  
  if (rs == NS_DDI || rs == NS_QQI || rs == NS_FFI)
    {
      /* Conversions with immediate bitshift.  */
      const char *enc[] =
        {
          "ftosls",
          "ftouls",
          "fsltos",
          "fultos",
          NULL,
          NULL,
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

      if (flavour >= 0 && flavour < (int) FUNC0 (enc))
        {
          opname = enc[flavour];
          FUNC2 (inst.operands[0].reg != inst.operands[1].reg,
                      FUNC1("operands 0 and 1 must be the same register"));
          inst.operands[1] = inst.operands[2];
          FUNC4 (&inst.operands[2], '\0', sizeof (inst.operands[2]));
        }
    }
  else
    {
      /* Conversions without bitshift.  */
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

      if (flavour >= 0 && flavour < (int) FUNC0 (enc))
        opname = enc[flavour];
    }

  if (opname)
    FUNC3 (opname);
}