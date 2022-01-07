
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,void const*,int) ;

__attribute__((used)) static int seq_copy_in_kernel(char **bufptr, const void *src, int size)
{
 memcpy(*bufptr, src, size);
 *bufptr += size;
 return 0;
}
