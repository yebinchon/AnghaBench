
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {struct cifs_ses* domainName; struct cifs_ses* user_name; struct cifs_ses* password; struct cifs_ses* serverNOS; struct cifs_ses* serverDomain; struct cifs_ses* serverOS; } ;


 int atomic_dec (int *) ;
 int cFYI (int,char*) ;
 int kfree (struct cifs_ses*) ;
 int memset (struct cifs_ses*,int ,int ) ;
 int sesInfoAllocCount ;
 int strlen (struct cifs_ses*) ;

void
sesInfoFree(struct cifs_ses *buf_to_free)
{
 if (buf_to_free == ((void*)0)) {
  cFYI(1, "Null buffer passed to sesInfoFree");
  return;
 }

 atomic_dec(&sesInfoAllocCount);
 kfree(buf_to_free->serverOS);
 kfree(buf_to_free->serverDomain);
 kfree(buf_to_free->serverNOS);
 if (buf_to_free->password) {
  memset(buf_to_free->password, 0, strlen(buf_to_free->password));
  kfree(buf_to_free->password);
 }
 kfree(buf_to_free->user_name);
 kfree(buf_to_free->domainName);
 kfree(buf_to_free);
}
