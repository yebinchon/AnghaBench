
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_set {int dummy; } ;


 int __put_css_set (struct css_set*,int) ;

__attribute__((used)) static inline void put_css_set_taskexit(struct css_set *cg)
{
 __put_css_set(cg, 1);
}
