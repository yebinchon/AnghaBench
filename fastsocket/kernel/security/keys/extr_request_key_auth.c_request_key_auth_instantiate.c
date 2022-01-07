
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_key_auth {int dummy; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {TYPE_1__ payload; } ;



__attribute__((used)) static int request_key_auth_instantiate(struct key *key,
     const void *data,
     size_t datalen)
{
 key->payload.data = (struct request_key_auth *) data;
 return 0;
}
