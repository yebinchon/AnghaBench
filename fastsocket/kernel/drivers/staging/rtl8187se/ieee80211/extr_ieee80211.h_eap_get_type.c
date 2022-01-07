
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 char const** eap_types ;

__attribute__((used)) static inline const char *eap_get_type(int type)
{
 return (type >= ARRAY_SIZE(eap_types)) ? "Unknown" : eap_types[type];
}
