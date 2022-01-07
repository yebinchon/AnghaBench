
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_col; int value_len; } ;
typedef TYPE_1__ VALUE ;



__attribute__((used)) static int
digit_of(VALUE * data)
{
    int col = data->value_col;
    int result = 1;

    while (++col < data->value_len) {
 result *= 10;
    }
    return result;
}
