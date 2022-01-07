
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdescmd5; int sdeschmacmd5; scalar_t__ hmacmd5; scalar_t__ md5; } ;
struct TCP_Server_Info {TYPE_1__ secmech; } ;


 int crypto_free_shash (scalar_t__) ;
 int kfree (int ) ;

void
cifs_crypto_shash_release(struct TCP_Server_Info *server)
{
 if (server->secmech.md5)
  crypto_free_shash(server->secmech.md5);

 if (server->secmech.hmacmd5)
  crypto_free_shash(server->secmech.hmacmd5);

 kfree(server->secmech.sdeschmacmd5);

 kfree(server->secmech.sdescmd5);
}
