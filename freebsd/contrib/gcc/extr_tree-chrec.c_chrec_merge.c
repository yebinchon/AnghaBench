
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_known ;
 scalar_t__ chrec_not_analyzed_yet ;
 scalar_t__ eq_evolutions_p (scalar_t__,scalar_t__) ;

tree
chrec_merge (tree chrec1,
      tree chrec2)
{
  if (chrec1 == chrec_dont_know
      || chrec2 == chrec_dont_know)
    return chrec_dont_know;

  if (chrec1 == chrec_known
      || chrec2 == chrec_known)
    return chrec_known;

  if (chrec1 == chrec_not_analyzed_yet)
    return chrec2;
  if (chrec2 == chrec_not_analyzed_yet)
    return chrec1;

  if (eq_evolutions_p (chrec1, chrec2))
    return chrec1;

  return chrec_dont_know;
}
