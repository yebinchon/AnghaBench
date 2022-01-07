
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wahc {int dummy; } ;


 int __wa_feature (struct wahc*,int ,int ) ;

__attribute__((used)) static inline int __wa_clear_feature(struct wahc *wa, u16 feature)
{
 return __wa_feature(wa, 0, feature);
}
