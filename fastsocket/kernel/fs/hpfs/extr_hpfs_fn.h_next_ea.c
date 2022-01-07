
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int namelen; int valuelen; } ;



__attribute__((used)) static inline struct extended_attribute *next_ea(struct extended_attribute *ea)
{
 return (struct extended_attribute *)((char *)ea + 5 + ea->namelen + ea->valuelen);
}
