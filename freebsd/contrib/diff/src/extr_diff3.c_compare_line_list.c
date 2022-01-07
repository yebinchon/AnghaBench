
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lin ;


 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static bool
compare_line_list (char * const list1[], size_t const lengths1[],
     char * const list2[], size_t const lengths2[],
     lin nl)
{
  char * const *l1 = list1;
  char * const *l2 = list2;
  size_t const *lgths1 = lengths1;
  size_t const *lgths2 = lengths2;

  while (nl--)
    if (!*l1 || !*l2 || *lgths1 != *lgths2++
 || memcmp (*l1++, *l2++, *lgths1++) != 0)
      return 0;
  return 1;
}
