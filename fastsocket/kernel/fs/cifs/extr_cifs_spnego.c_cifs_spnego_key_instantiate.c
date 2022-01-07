
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* data; } ;
struct key {TYPE_1__ payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static int
cifs_spnego_key_instantiate(struct key *key, const void *data, size_t datalen)
{
 char *payload;
 int ret;

 ret = -ENOMEM;
 payload = kmalloc(datalen, GFP_KERNEL);
 if (!payload)
  goto error;


 memcpy(payload, data, datalen);
 key->payload.data = payload;
 ret = 0;

error:
 return ret;
}
