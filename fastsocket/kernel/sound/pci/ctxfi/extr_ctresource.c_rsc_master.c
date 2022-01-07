
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int conj; int idx; } ;



__attribute__((used)) static int rsc_master(struct rsc *rsc)
{
 return rsc->conj = rsc->idx;
}
