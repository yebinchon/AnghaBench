
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ParseIsEscaped(const char *line, const char *c)
{
    int active = 0;
    for (;;) {
 if (line == c)
     return active;
 if (*--c != '\\')
     return active;
 active = !active;
    }
}
