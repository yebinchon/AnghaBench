
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; void* data; } ;
struct carlfw {TYPE_1__ fw; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int carl9170fw_size_check (size_t) ;
 void* realloc (void*,size_t) ;

void *carlfw_mod_tailroom(struct carlfw *fw, ssize_t len)
{
 size_t new_len;
 void *buf;

 new_len = fw->fw.len + len;

 if (!carl9170fw_size_check(new_len))
  return ERR_PTR(-EINVAL);

 buf = realloc(fw->fw.data, new_len);
 if (buf == ((void*)0))
  return ERR_PTR(-ENOMEM);

 fw->fw.len = new_len;
 fw->fw.data = buf;
 return &fw->fw.data[new_len - len];
}
