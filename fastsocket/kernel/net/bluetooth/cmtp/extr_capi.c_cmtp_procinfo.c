
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {int dummy; } ;



__attribute__((used)) static char *cmtp_procinfo(struct capi_ctr *ctrl)
{
 return "CAPI Message Transport Protocol";
}
