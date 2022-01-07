
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;



__attribute__((used)) static int kill_all(struct nf_conn *i, void *data)
{
 return 1;
}
