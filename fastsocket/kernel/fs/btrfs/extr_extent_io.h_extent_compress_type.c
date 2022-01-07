
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long EXTENT_BIO_FLAG_SHIFT ;

__attribute__((used)) static inline int extent_compress_type(unsigned long bio_flags)
{
 return bio_flags >> EXTENT_BIO_FLAG_SHIFT;
}
