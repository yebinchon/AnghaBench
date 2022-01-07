
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_endp {int kref; } ;
struct u132 {int dummy; } ;


 int kref_put (int *,int ) ;
 int u132_endp_delete ;

__attribute__((used)) static inline void u132_endp_put_kref(struct u132 *u132, struct u132_endp *endp)
{
 kref_put(&endp->kref, u132_endp_delete);
}
