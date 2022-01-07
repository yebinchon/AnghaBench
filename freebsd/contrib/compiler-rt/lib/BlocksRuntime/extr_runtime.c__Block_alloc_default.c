
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (unsigned long const) ;

__attribute__((used)) static void *_Block_alloc_default(const unsigned long size, const bool initialCountIsOne, const bool isObject) {
    return malloc(size);
}
