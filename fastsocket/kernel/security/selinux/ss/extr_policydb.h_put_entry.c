
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_file {size_t data; size_t len; } ;


 int memcpy (size_t,void*,size_t) ;

__attribute__((used)) static inline int put_entry(void *buf, size_t bytes, int num, struct policy_file *fp)
{
 size_t len = bytes * num;

 memcpy(fp->data, buf, len);
 fp->data += len;
 fp->len -= len;

 return 0;
}
