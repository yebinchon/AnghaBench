
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_ref_t ;
typedef int key_perm_t ;


 int current_cred () ;
 int key_task_permission (int const,int ,int ) ;

__attribute__((used)) static inline int key_permission(const key_ref_t key_ref, key_perm_t perm)
{
 return key_task_permission(key_ref, current_cred(), perm);
}
