
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_len; int current; size_t value_col; scalar_t__ min_value; scalar_t__ max_value; } ;
typedef TYPE_1__ VALUE ;


 int FALSE ;
 int TRUE ;
 int sprintf (char*,char*,int,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static bool
set_digit(VALUE * data, int chr)
{
    bool result = FALSE;
    char buffer[80];
    long check;
    char *next = 0;

    sprintf(buffer, "%*d", data->value_len, data->current);
    buffer[data->value_col] = (char) chr;
    check = strtol(buffer, &next, 10);
    if (next == 0 || *next == '\0') {
 if ((check <= (long) data->max_value) &&
     (check >= (long) data->min_value)) {
     result = TRUE;
     data->current = (int) check;
 }
    }

    return result;
}
