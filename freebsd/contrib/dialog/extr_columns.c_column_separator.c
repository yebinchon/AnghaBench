
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* column_separator; } ;


 TYPE_1__ dialog_vars ;

__attribute__((used)) static char *
column_separator(void)
{
    char *result = 0;

    if ((result = dialog_vars.column_separator) != 0) {
 if (*result == '\0')
     result = 0;
    }
    return result;
}
