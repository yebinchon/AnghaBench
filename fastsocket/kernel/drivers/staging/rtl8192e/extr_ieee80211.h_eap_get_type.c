
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 char const** eap_types ;

__attribute__((used)) static inline const char *eap_get_type(int type)
{
 return ((u32)type >= ARRAY_SIZE(eap_types)) ? "Unknown" : eap_types[type];
}
