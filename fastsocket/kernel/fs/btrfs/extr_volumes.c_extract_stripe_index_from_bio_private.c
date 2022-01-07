
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int extract_stripe_index_from_bio_private(void *bi_private)
{
 return (unsigned int)((uintptr_t)bi_private) & 3;
}
