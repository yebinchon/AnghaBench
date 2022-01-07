
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,struct dt_info*,char*) ;

__attribute__((used)) static inline void check_always_fail(struct check *c, struct dt_info *dti,
         struct node *node)
{
 FAIL(c, dti, "always_fail check");
}
