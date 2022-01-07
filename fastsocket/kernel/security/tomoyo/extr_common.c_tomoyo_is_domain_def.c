
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOMOYO_ROOT_NAME ;
 int TOMOYO_ROOT_NAME_LEN ;
 int strncmp (unsigned char const*,int ,int ) ;

bool tomoyo_is_domain_def(const unsigned char *buffer)
{
 return !strncmp(buffer, TOMOYO_ROOT_NAME, TOMOYO_ROOT_NAME_LEN);
}
