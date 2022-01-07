
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int __be32 ;


 scalar_t__ XLOG_HEADER_MAGIC_NUM ;
 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static inline uint xlog_get_cycle(char *ptr)
{
 if (be32_to_cpu(*(__be32 *)ptr) == XLOG_HEADER_MAGIC_NUM)
  return be32_to_cpu(*((__be32 *)ptr + 1));
 else
  return be32_to_cpu(*(__be32 *)ptr);
}
