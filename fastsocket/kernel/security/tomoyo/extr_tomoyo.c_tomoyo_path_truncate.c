
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
typedef int loff_t ;


 int TOMOYO_TYPE_TRUNCATE_ACL ;
 int tomoyo_check_1path_perm (int ,int ,struct path*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_path_truncate(struct path *path, loff_t length,
    unsigned int time_attrs)
{
 return tomoyo_check_1path_perm(tomoyo_domain(),
           TOMOYO_TYPE_TRUNCATE_ACL,
           path);
}
