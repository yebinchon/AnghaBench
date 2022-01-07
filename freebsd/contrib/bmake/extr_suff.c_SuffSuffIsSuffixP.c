
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SuffSuffIsSuffix (void const*,void const*) ;

__attribute__((used)) static int
SuffSuffIsSuffixP(const void *s, const void *sd)
{
    return(!SuffSuffIsSuffix(s, sd));
}
