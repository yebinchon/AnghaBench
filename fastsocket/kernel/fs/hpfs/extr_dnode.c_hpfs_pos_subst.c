
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ loff_t ;



__attribute__((used)) static void hpfs_pos_subst(loff_t *p, loff_t f, loff_t t)
{
 if (*p == f) *p = t;
}
