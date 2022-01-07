
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_file {size_t len; size_t data; } ;


 int EINVAL ;
 int memcpy (void*,size_t,size_t) ;

__attribute__((used)) static inline int next_entry(void *buf, struct policy_file *fp, size_t bytes)
{
 if (bytes > fp->len)
  return -EINVAL;

 memcpy(buf, fp->data, bytes);
 fp->data += bytes;
 fp->len -= bytes;
 return 0;
}
