
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t br_pem_encode (void*,void const*,size_t,char const*,int ) ;
 int write_to_file (char const*,void*,size_t) ;
 int xfree (void*) ;
 void* xmalloc (size_t) ;

__attribute__((used)) static int
write_to_pem_file(const char *name,
 const void *data, size_t len, const char *banner)
{
 void *pem;
 size_t pemlen;
 int r;

 pemlen = br_pem_encode(((void*)0), ((void*)0), len, banner, 0);
 pem = xmalloc(pemlen + 1);
 br_pem_encode(pem, data, len, banner, 0);
 r = write_to_file(name, pem, pemlen);
 xfree(pem);
 return r;
}
