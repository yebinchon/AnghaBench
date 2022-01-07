
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
for_var_len(const char *var)
{
    char ch, var_start, var_end;
    int depth;
    int len;

    var_start = *var;
    if (var_start == 0)

 return 0;

    if (var_start == '(')
 var_end = ')';
    else if (var_start == '{')
 var_end = '}';
    else

 return 1;

    depth = 1;
    for (len = 1; (ch = var[len++]) != 0;) {
 if (ch == var_start)
     depth++;
 else if (ch == var_end && --depth == 0)
     return len;
    }


    return 0;
}
