
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
typedef TYPE_1__ fde ;



__attribute__((used)) static inline const fde *
next_fde (const fde *f)
{
  return (const fde *) ((char *) f + f->length + sizeof (f->length));
}
