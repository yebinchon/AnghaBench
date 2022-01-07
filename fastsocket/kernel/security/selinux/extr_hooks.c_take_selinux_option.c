
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void take_selinux_option(char **to, char *from, int *first,
           int len)
{
 int current_size = 0;

 if (!*first) {
  **to = '|';
  *to += 1;
 } else
  *first = 0;

 while (current_size < len) {
  if (*from != '"') {
   **to = *from;
   *to += 1;
  }
  from += 1;
  current_size += 1;
 }
}
