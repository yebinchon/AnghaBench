
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_beca_e {int refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void uwb_bce_get(struct uwb_beca_e *bce)
{
 kref_get(&bce->refcnt);
}
