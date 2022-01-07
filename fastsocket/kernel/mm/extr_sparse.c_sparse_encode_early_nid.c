
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECTION_NID_SHIFT ;

__attribute__((used)) static inline unsigned long sparse_encode_early_nid(int nid)
{
 return (nid << SECTION_NID_SHIFT);
}
