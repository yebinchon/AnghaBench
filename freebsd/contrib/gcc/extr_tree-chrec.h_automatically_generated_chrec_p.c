
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_known ;
 scalar_t__ chrec_not_analyzed_yet ;

__attribute__((used)) static inline bool
automatically_generated_chrec_p (tree chrec)
{
  return (chrec == chrec_not_analyzed_yet
   || chrec == chrec_dont_know
   || chrec == chrec_known);
}
