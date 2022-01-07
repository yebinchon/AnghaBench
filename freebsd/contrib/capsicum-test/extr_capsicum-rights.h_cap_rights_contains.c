
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;



inline bool cap_rights_contains(const cap_rights_t *big, const cap_rights_t *little) {
  return ((*big) & (*little)) == (*little);
}
