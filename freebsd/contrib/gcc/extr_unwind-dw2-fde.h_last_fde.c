
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object {char* fde_end; } ;
struct TYPE_3__ {scalar_t__ length; } ;
typedef TYPE_1__ fde ;



__attribute__((used)) static inline int
last_fde (struct object *obj __attribute__ ((__unused__)), const fde *f)
{



  return f->length == 0;

}
