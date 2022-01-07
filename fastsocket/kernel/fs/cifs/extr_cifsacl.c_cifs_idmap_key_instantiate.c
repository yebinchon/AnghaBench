
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char value; char* data; } ;
struct key {size_t datalen; TYPE_1__ payload; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static int
cifs_idmap_key_instantiate(struct key *key, const void *data, size_t datalen)
{
 char *payload;
 if (datalen <= sizeof(key->payload)) {
  key->payload.value = 0;
  memcpy(&key->payload.value, data, datalen);
  key->datalen = datalen;
  return 0;
 }
 payload = kmalloc(datalen, GFP_KERNEL);
 if (!payload)
  return -ENOMEM;

 memcpy(payload, data, datalen);
 key->payload.data = payload;
 key->datalen = datalen;
 return 0;
}
