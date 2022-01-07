
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_known ;
 scalar_t__ chrec_not_analyzed_yet ;

__attribute__((used)) static inline tree
chrec_fold_automatically_generated_operands (tree op0,
          tree op1)
{
  if (op0 == chrec_dont_know
      || op1 == chrec_dont_know)
    return chrec_dont_know;

  if (op0 == chrec_known
      || op1 == chrec_known)
    return chrec_known;

  if (op0 == chrec_not_analyzed_yet
      || op1 == chrec_not_analyzed_yet)
    return chrec_not_analyzed_yet;


  return chrec_dont_know;
}
