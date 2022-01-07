
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; void* data; } ;
struct carlfw {TYPE_1__ fw; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int carl9170fw_size_check (size_t) ;
 void* carlfw_mod_tailroom (struct carlfw*,size_t) ;
 int memmove (void*,void*,size_t) ;

void *carlfw_mod_headroom(struct carlfw *fw, ssize_t len)
{
 size_t new_len;
 void *ptr;

 new_len = fw->fw.len + len;
 if (!carl9170fw_size_check(new_len))
  return ERR_PTR(-EINVAL);

 if (len < 0)
  memmove(fw->fw.data, &fw->fw.data[len], new_len);

 ptr = carlfw_mod_tailroom(fw, len);
 if (IS_ERR_OR_NULL(ptr))
  return ptr;

 if (len > 0)
  memmove(&fw->fw.data[len], &fw->fw.data[0], new_len - len);

 return fw->fw.data;
}
