
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int abts_case ;
struct TYPE_2__ {int hash; scalar_t__ password; } ;


 int apr_assert_success (int *,char*,int ) ;
 int apr_password_validate (scalar_t__,int ) ;
 TYPE_1__* glibc_sha_pws ;

__attribute__((used)) static void test_glibc_shapass(abts_case *tc, void *data)
{
    int i = 0;
    while (glibc_sha_pws[i].password) {
        apr_assert_success(tc, "check for valid glibc crypt-sha password",
                           apr_password_validate(glibc_sha_pws[i].password,
                                                 glibc_sha_pws[i].hash));
        i++;
    }
}
