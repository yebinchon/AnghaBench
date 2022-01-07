
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int EINVAL ;
 int keyring_publish_name (struct key*) ;

__attribute__((used)) static int keyring_instantiate(struct key *keyring,
          const void *data, size_t datalen)
{
 int ret;

 ret = -EINVAL;
 if (datalen == 0) {

  keyring_publish_name(keyring);
  ret = 0;
 }

 return ret;
}
