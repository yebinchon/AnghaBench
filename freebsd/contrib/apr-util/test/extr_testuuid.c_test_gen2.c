
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
typedef int apr_uuid_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int apr_uuid_get (int *) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void test_gen2(abts_case *tc, void *data)
{
    apr_uuid_t uuid;
    apr_uuid_t uuid2;


    apr_uuid_get(&uuid);
    apr_uuid_get(&uuid2);

    ABTS_ASSERT(tc, "generated the same UUID twice",
             memcmp(&uuid, &uuid2, sizeof(uuid)) != 0);
}
