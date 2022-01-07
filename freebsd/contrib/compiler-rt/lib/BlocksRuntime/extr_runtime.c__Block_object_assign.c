
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const BLOCK_BYREF_CALLER ;
 int const BLOCK_FIELD_IS_BLOCK ;
 int const BLOCK_FIELD_IS_BYREF ;
 int const BLOCK_FIELD_IS_OBJECT ;
 int const BLOCK_FIELD_IS_WEAK ;
 int _Block_assign (void*,void*) ;
 int _Block_assign_weak (void const*,void*) ;
 int _Block_byref_assign_copy (void*,void const*,int const) ;
 void* _Block_copy_internal (void const*,int const) ;
 int _Block_retain_object (void const*) ;

void _Block_object_assign(void *destAddr, const void *object, const int flags) {

    if ((flags & BLOCK_BYREF_CALLER) == BLOCK_BYREF_CALLER) {
        if ((flags & BLOCK_FIELD_IS_WEAK) == BLOCK_FIELD_IS_WEAK) {
            _Block_assign_weak(object, destAddr);
        }
        else {

            _Block_assign((void *)object, destAddr);
        }
    }
    else if ((flags & BLOCK_FIELD_IS_BYREF) == BLOCK_FIELD_IS_BYREF) {


        _Block_byref_assign_copy(destAddr, object, flags);
    }

    else if ((flags & BLOCK_FIELD_IS_BLOCK) == BLOCK_FIELD_IS_BLOCK) {

        _Block_assign(_Block_copy_internal(object, flags), destAddr);
    }

    else if ((flags & BLOCK_FIELD_IS_OBJECT) == BLOCK_FIELD_IS_OBJECT) {

        _Block_retain_object(object);

        _Block_assign((void *)object, destAddr);
    }
}
