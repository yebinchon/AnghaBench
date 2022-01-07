
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const BLOCK_BYREF_CALLER ;
 int const BLOCK_FIELD_IS_BLOCK ;
 int const BLOCK_FIELD_IS_BYREF ;
 int const BLOCK_FIELD_IS_OBJECT ;
 int const BLOCK_FIELD_IS_WEAK ;
 int _Block_byref_release (void const*) ;
 int _Block_destroy (void const*) ;
 int _Block_release_object (void const*) ;

void _Block_object_dispose(const void *object, const int flags) {

    if (flags & BLOCK_FIELD_IS_BYREF) {

        _Block_byref_release(object);
    }
    else if ((flags & (BLOCK_FIELD_IS_BLOCK|BLOCK_BYREF_CALLER)) == BLOCK_FIELD_IS_BLOCK) {


        _Block_destroy(object);
    }
    else if ((flags & (BLOCK_FIELD_IS_WEAK|BLOCK_FIELD_IS_BLOCK|BLOCK_BYREF_CALLER)) == BLOCK_FIELD_IS_OBJECT) {


        _Block_release_object(object);
    }
}
