
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_case ;


 int APR_ASSERT_FAILURE (int *,char*,int ) ;
 int apr_assert_success (int *,char*,int ) ;
 int apr_password_validate (char const*,char*) ;
 int apr_sha1_base64 (char const*,int ,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_shapass(abts_case *tc, void *data)
{
    const char *pass = "hellojed";
    const char *pass2 = "hellojed2";
    char hash[100];

    apr_sha1_base64(pass, strlen(pass), hash);

    apr_assert_success(tc, "SHA1 password validated",
                       apr_password_validate(pass, hash));
    APR_ASSERT_FAILURE(tc, "wrong SHA1 password should not validate",
                       apr_password_validate(pass2, hash));
}
