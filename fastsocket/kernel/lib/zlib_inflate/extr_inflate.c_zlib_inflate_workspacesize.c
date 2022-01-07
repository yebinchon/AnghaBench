
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inflate_workspace {int dummy; } ;



int zlib_inflate_workspacesize(void)
{
    return sizeof(struct inflate_workspace);
}
