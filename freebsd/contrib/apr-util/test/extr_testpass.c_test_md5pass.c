
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_case ;


 int APR_ASSERT_FAILURE (int *,char*,int ) ;
 int apr_assert_success (int *,char*,int ) ;
 int apr_md5_encode (char const*,char const*,char*,int) ;
 int apr_password_validate (char const*,char*) ;

__attribute__((used)) static void test_md5pass(abts_case *tc, void *data)
{
    const char *pass = "hellojed", *salt = "sardine";
    const char *pass2 = "hellojed2";
    char hash[100];

    apr_md5_encode(pass, salt, hash, sizeof hash);

    apr_assert_success(tc, "MD5 password validated",
                       apr_password_validate(pass, hash));
    APR_ASSERT_FAILURE(tc, "wrong MD5 password should not validate",
                       apr_password_validate(pass2, hash));
}
