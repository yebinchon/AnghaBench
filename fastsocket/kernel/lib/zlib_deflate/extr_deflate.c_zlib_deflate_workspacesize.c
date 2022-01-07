
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deflate_workspace ;



int zlib_deflate_workspacesize(void)
{
    return sizeof(deflate_workspace);
}
