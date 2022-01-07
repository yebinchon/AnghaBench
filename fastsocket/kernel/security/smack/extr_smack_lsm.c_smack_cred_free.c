
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int * security; } ;



__attribute__((used)) static void smack_cred_free(struct cred *cred)
{
 cred->security = ((void*)0);
}
