
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int * security; } ;
typedef int gfp_t ;



__attribute__((used)) static int tomoyo_cred_alloc_blank(struct cred *new, gfp_t gfp)
{
 new->security = ((void*)0);
 return 0;
}
