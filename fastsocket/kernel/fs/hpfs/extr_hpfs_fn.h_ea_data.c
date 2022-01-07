
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int namelen; } ;



__attribute__((used)) static inline char *ea_data(struct extended_attribute *ea)
{
 return (char *)((char *)ea + 5 + ea->namelen);
}
