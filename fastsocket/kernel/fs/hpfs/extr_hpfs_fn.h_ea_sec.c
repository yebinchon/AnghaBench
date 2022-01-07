
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int namelen; } ;
typedef int secno ;



__attribute__((used)) static inline secno ea_sec(struct extended_attribute *ea)
{
 return *(secno *)((char *)ea + 9 + ea->namelen);
}
