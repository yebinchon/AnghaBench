
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long file_size; } ;
typedef TYPE_1__ MY_OBJ ;


 int SEEK_END ;
 long lseek_obj (TYPE_1__*,long,int ) ;

__attribute__((used)) static void
lseek_end(MY_OBJ * obj, long offset)
{
    long actual = lseek_obj(obj, offset, SEEK_END);

    if (offset == 0L && actual > offset) {
 obj->file_size = actual;
    }
}
