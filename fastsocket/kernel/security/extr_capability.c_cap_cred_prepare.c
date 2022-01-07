
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static int cap_cred_prepare(struct cred *new, const struct cred *old, gfp_t gfp)
{
 return 0;
}
