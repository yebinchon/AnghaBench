
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int refmap; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void __dlm_lockres_clear_refmap_bit(int bit,
        struct dlm_lock_resource *res,
        const char *file,
        int line)
{


 clear_bit(bit, res->refmap);
}
