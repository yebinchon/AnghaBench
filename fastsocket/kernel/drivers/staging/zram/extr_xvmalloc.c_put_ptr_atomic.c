
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum km_type { ____Placeholder_km_type } km_type ;


 int kunmap_atomic (void*,int) ;

__attribute__((used)) static void put_ptr_atomic(void *ptr, enum km_type type)
{
 kunmap_atomic(ptr, type);
}
