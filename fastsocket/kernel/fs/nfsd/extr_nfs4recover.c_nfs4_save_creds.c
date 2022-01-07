
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {scalar_t__ fsgid; scalar_t__ fsuid; } ;


 int ENOMEM ;
 struct cred* override_creds (struct cred*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;

__attribute__((used)) static int
nfs4_save_creds(const struct cred **original_creds)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 new->fsuid = 0;
 new->fsgid = 0;
 *original_creds = override_creds(new);
 put_cred(new);
 return 0;
}
