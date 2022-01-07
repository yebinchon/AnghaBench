
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_CIFS_HDR_SIZE ;

__attribute__((used)) static inline size_t
max_header_size(void)
{
 return MAX_CIFS_HDR_SIZE;
}
