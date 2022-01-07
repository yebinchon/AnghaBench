
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compress_format {char* name; int * decompressor; int magic; } ;
typedef int * decompress_fn ;


 struct compress_format* compressed_formats ;
 int memcmp (unsigned char const*,int ,int) ;

decompress_fn decompress_method(const unsigned char *inbuf, int len,
    const char **name)
{
 const struct compress_format *cf;

 if (len < 2)
  return ((void*)0);

 for (cf = compressed_formats; cf->name; cf++) {
  if (!memcmp(inbuf, cf->magic, 2))
   break;

 }
 if (name)
  *name = cf->name;
 return cf->decompressor;
}
