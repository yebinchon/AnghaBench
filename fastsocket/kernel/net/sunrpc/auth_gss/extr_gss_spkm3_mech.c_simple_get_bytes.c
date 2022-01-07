
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 void const* ERR_PTR (int ) ;
 int memcpy (void*,void const*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const void *
simple_get_bytes(const void *p, const void *end, void *res, int len)
{
 const void *q = (const void *)((const char *)p + len);
 if (unlikely(q > end || q < p))
  return ERR_PTR(-EFAULT);
 memcpy(res, p, len);
 return q;
}
