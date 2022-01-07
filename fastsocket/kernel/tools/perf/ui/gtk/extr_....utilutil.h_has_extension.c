
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline int has_extension(const char *filename, const char *ext)
{
 size_t len = strlen(filename);
 size_t extlen = strlen(ext);

 return len > extlen && !memcmp(filename + len - extlen, ext, extlen);
}
