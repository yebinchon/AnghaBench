
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int size_index_elem(size_t bytes)
{
 return (bytes - 1) / 8;
}
