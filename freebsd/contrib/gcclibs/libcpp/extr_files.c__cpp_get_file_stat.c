
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {struct stat st; } ;
typedef TYPE_1__ _cpp_file ;



struct stat *
_cpp_get_file_stat (_cpp_file *file)
{
    return &file->st;
}
