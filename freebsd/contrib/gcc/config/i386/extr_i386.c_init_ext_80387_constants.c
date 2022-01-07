
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFmode ;
 int ext_80387_constants_init ;
 int * ext_80387_constants_table ;
 int real_convert (int *,int ,int *) ;
 int real_from_string (int *,char const*) ;

__attribute__((used)) static void
init_ext_80387_constants (void)
{
  static const char * cst[5] =
  {
    "0.3010299956639811952256464283594894482",
    "0.6931471805599453094286904741849753009",
    "1.4426950408889634073876517827983434472",
    "3.3219280948873623478083405569094566090",
    "3.1415926535897932385128089594061862044",
  };
  int i;

  for (i = 0; i < 5; i++)
    {
      real_from_string (&ext_80387_constants_table[i], cst[i]);

      real_convert (&ext_80387_constants_table[i],
      XFmode, &ext_80387_constants_table[i]);
    }

  ext_80387_constants_init = 1;
}
