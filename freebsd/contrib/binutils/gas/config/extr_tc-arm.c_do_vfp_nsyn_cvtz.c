
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int NS_FD ;
 int NS_FF ;
 int NS_NULL ;
 int do_vfp_nsyn_opcode (char const*) ;
 int neon_cvt_flavour (int) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static void
do_vfp_nsyn_cvtz (void)
{
  enum neon_shape rs = neon_select_shape (NS_FF, NS_FD, NS_NULL);
  int flavour = neon_cvt_flavour (rs);
  const char *enc[] =
    {
      "ftosizs",
      "ftouizs",
      ((void*)0),
      ((void*)0),
      ((void*)0),
      ((void*)0),
      "ftosizd",
      "ftouizd"
    };

  if (flavour >= 0 && flavour < (int) ARRAY_SIZE (enc) && enc[flavour])
    do_vfp_nsyn_opcode (enc[flavour]);
}
