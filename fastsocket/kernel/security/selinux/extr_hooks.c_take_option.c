
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static inline void take_option(char **to, char *from, int *first, int len)
{
 if (!*first) {
  **to = ',';
  *to += 1;
 } else
  *first = 0;
 memcpy(*to, from, len);
 *to += len;
}
