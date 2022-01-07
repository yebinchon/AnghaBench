
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kind; } ;
struct meta_value {TYPE_1__ hdr; } ;


 int TCF_META_TYPE (int ) ;

__attribute__((used)) static inline int meta_type(struct meta_value *v)
{
 return TCF_META_TYPE(v->hdr.kind);
}
