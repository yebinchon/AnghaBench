
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_key_payload {int dummy; } ;
struct TYPE_2__ {struct user_key_payload* data; } ;
struct key {TYPE_1__ payload; } ;


 int kfree (struct user_key_payload*) ;

void user_destroy(struct key *key)
{
 struct user_key_payload *upayload = key->payload.data;

 kfree(upayload);
}
