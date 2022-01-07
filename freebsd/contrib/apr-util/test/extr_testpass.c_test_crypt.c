
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int abts_case ;
struct TYPE_2__ {int hash; int password; } ;


 int apr_assert_success (int *,char*,int ) ;
 int apr_password_validate (int ,int ) ;
 int num_passwords ;
 TYPE_1__* passwords ;

__attribute__((used)) static void test_crypt(abts_case *tc, void *data)
{
    int i;

    for (i = 0; i < num_passwords; i++) {
        apr_assert_success(tc, "check for valid password",
                           apr_password_validate(passwords[i].password,
                                                 passwords[i].hash));
    }
}
