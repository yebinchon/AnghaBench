
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_fh {unsigned int resources; } ;



int res_check(struct cx25821_fh *fh, unsigned int bit)
{
 return fh->resources & bit;
}
