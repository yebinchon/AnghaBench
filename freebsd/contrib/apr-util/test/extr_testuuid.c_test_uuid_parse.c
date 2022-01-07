
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
typedef int apr_uuid_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_UUID_FORMATTED_LENGTH ;
 int apr_uuid_format (char*,int *) ;
 int apr_uuid_get (int *) ;
 int apr_uuid_parse (int *,char*) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void test_uuid_parse(abts_case *tc, void *data)
{
    apr_uuid_t uuid;
    apr_uuid_t uuid2;
    char buf[APR_UUID_FORMATTED_LENGTH + 1];

    apr_uuid_get(&uuid);
    apr_uuid_format(buf, &uuid);

    apr_uuid_parse(&uuid2, buf);
    ABTS_ASSERT(tc, "parse produced a different UUID",
             memcmp(&uuid, &uuid2, sizeof(uuid)) == 0);
}
