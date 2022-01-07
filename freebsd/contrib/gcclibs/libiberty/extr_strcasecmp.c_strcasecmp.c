
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* charmap ;

int
strcasecmp(const char *s1, const char *s2)
{
    register unsigned char u1, u2;

    for (;;) {
 u1 = (unsigned char) *s1++;
 u2 = (unsigned char) *s2++;
 if (charmap[u1] != charmap[u2]) {
     return charmap[u1] - charmap[u2];
 }
 if (u1 == '\0') {
     return 0;
 }
    }
}
