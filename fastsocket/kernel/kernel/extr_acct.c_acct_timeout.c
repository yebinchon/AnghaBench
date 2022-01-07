
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_acct_struct {int needcheck; } ;



__attribute__((used)) static void acct_timeout(unsigned long x)
{
 struct bsd_acct_struct *acct = (struct bsd_acct_struct *)x;
 acct->needcheck = 1;
}
