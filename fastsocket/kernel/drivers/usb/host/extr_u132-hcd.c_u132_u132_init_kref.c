
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132 {int kref; } ;


 int kref_init (int *) ;

__attribute__((used)) static inline void u132_u132_init_kref(struct u132 *u132)
{
 kref_init(&u132->kref);
}
