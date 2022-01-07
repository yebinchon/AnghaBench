
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {struct cifs_tcon* password; struct cifs_tcon* nativeFileSystem; } ;


 int atomic_dec (int *) ;
 int cFYI (int,char*) ;
 int kfree (struct cifs_tcon*) ;
 int memset (struct cifs_tcon*,int ,int ) ;
 int strlen (struct cifs_tcon*) ;
 int tconInfoAllocCount ;

void
tconInfoFree(struct cifs_tcon *buf_to_free)
{
 if (buf_to_free == ((void*)0)) {
  cFYI(1, "Null buffer passed to tconInfoFree");
  return;
 }
 atomic_dec(&tconInfoAllocCount);
 kfree(buf_to_free->nativeFileSystem);
 if (buf_to_free->password) {
  memset(buf_to_free->password, 0, strlen(buf_to_free->password));
  kfree(buf_to_free->password);
 }
 kfree(buf_to_free);
}
