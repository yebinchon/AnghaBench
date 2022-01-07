
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _Block_copy_internal (void const*,int ) ;

void *_Block_copy_collectable(const void *aBlock) {
    return _Block_copy_internal(aBlock, 0);
}
