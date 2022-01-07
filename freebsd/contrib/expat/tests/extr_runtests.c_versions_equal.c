
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ major; scalar_t__ minor; scalar_t__ micro; } ;
typedef TYPE_1__ XML_Expat_Version ;



__attribute__((used)) static int
versions_equal(const XML_Expat_Version *first,
               const XML_Expat_Version *second)
{
    return (first->major == second->major &&
            first->minor == second->minor &&
            first->micro == second->micro);
}
