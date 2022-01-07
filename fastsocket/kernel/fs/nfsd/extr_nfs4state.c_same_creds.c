
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cred {scalar_t__ cr_uid; } ;



__attribute__((used)) static int
same_creds(struct svc_cred *cr1, struct svc_cred *cr2)
{
 return cr1->cr_uid == cr2->cr_uid;
}
