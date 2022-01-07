
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int gcc_assert (int) ;
 int s390_branch_condition_mask (int ) ;

__attribute__((used)) static const char *
s390_branch_condition_mnemonic (rtx code, int inv)
{
  static const char *const mnemonic[16] =
    {
      ((void*)0), "o", "h", "nle",
      "l", "nhe", "lh", "ne",
      "e", "nlh", "he", "nl",
      "le", "nh", "no", ((void*)0)
    };

  int mask = s390_branch_condition_mask (code);
  gcc_assert (mask >= 0);

  if (inv)
    mask ^= 15;

  gcc_assert (mask >= 1 && mask <= 14);

  return mnemonic[mask];
}
