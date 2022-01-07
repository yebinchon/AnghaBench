
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WANTS_ONE ;
 void* _Block_copy_internal (void const*,int ) ;

void *_Block_copy(const void *arg) {
    return _Block_copy_internal(arg, WANTS_ONE);
}
