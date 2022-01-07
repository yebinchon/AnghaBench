
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ XML_Memory_Handling_Suite ;


 int ALLOC_ALWAYS_SUCCEED ;
 int REALLOC_ALWAYS_SUCCEED ;
 int * XML_ParserCreate_MM (int *,TYPE_1__*,int *) ;
 int allocation_count ;
 int duff_allocator ;
 int duff_reallocator ;
 int fail (char*) ;
 int free ;
 int * parser ;
 int reallocation_count ;

__attribute__((used)) static void
alloc_setup(void)
{
    XML_Memory_Handling_Suite memsuite = {
        duff_allocator,
        duff_reallocator,
        free
    };


    allocation_count = ALLOC_ALWAYS_SUCCEED;
    reallocation_count = REALLOC_ALWAYS_SUCCEED;
    parser = XML_ParserCreate_MM(((void*)0), &memsuite, ((void*)0));
    if (parser == ((void*)0))
        fail("Parser not created");
}
