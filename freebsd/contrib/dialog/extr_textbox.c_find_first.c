
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long page_length; } ;
typedef TYPE_1__ MY_OBJ ;



__attribute__((used)) static long
find_first(MY_OBJ * obj, char *buffer, long length)
{
    long recount = obj->page_length;
    long result = 0;

    while (length > 0) {
 if (buffer[length] == '\n') {
     if (--recount < 0) {
  result = length;
  break;
     }
 }
 --length;
    }
    return result;
}
