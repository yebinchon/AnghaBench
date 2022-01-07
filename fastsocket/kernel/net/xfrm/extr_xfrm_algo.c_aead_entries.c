
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int aead_list ;

__attribute__((used)) static inline int aead_entries(void)
{
 return ARRAY_SIZE(aead_list);
}
