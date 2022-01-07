
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int argv; } ;


 int argv_free (int ) ;

__attribute__((used)) static void argv_cleanup(struct subprocess_info *info)
{
 argv_free(info->argv);
}
