
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_dbd_t ;
typedef int apr_dbd_driver_t ;







 int TEST (char*,int ) ;
 int apr_dbd_close (int const*,int *) ;
 int apr_dbd_get_driver (int *,char const*,int const**) ;
 int apr_dbd_init (int *) ;
 int apr_dbd_open (int const*,int *,char const*,int **) ;
 int apr_initialize () ;
 int apr_pool_create (int **,int *) ;
 int apr_pool_destroy (int *) ;
 int apr_terminate () ;
 int create_table ;
 int drop_table ;
 int fprintf (int ,char*,char*) ;
 int insert_rows ;
 int invalid_op ;
 int printf (char*,char const*,...) ;
 int select_random ;
 int select_sequential ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdout ;
 int test_pquery ;
 int test_pselect ;
 int test_transactions ;

int main(int argc, char** argv)
{
    const char *name;
    const char *params;
    apr_pool_t *pool = ((void*)0);
    apr_dbd_t *sql = ((void*)0);
    const apr_dbd_driver_t *driver = ((void*)0);
    int rv;

    apr_initialize();
    apr_pool_create(&pool, ((void*)0));

    if (argc >= 2 && argc <= 3) {
        name = argv[1];
        params = ( argc == 3 ) ? argv[2] : "";
        apr_dbd_init(pool);
        setbuf(stdout,((void*)0));
        rv = apr_dbd_get_driver(pool, name, &driver);
        switch (rv) {
        case 128:
           printf("Loaded %s driver OK.\n", name);
           break;
        case 132:
           printf("Failed to load driver file apr_dbd_%s.so\n", name);
           goto finish;
        case 129:
           printf("Failed to load driver apr_dbd_%s_driver.\n", name);
           goto finish;
        case 130:
           printf("No driver available for %s.\n", name);
           goto finish;
        default:
           printf("Internal error loading %s.\n", name);
           goto finish;
        }
        rv = apr_dbd_open(driver, pool, params, &sql);
        switch (rv) {
        case 128:
           printf("Opened %s[%s] OK\n", name, params);
           break;
        case 131:
           printf("Failed to open %s[%s]\n", name, params);
           goto finish;
        default:
           printf("Internal error opening %s[%s]\n", name, params);
           goto finish;
        }
        TEST("create table", create_table);
        TEST("insert rows", insert_rows);
        TEST("invalid op", invalid_op);
        TEST("select random", select_random);
        TEST("select sequential", select_sequential);
        TEST("transactions", test_transactions);
        TEST("prepared select", test_pselect);
        TEST("prepared query", test_pquery);
        TEST("drop table", drop_table);
        apr_dbd_close(driver, sql);
    }
    else {
        fprintf(stderr, "Usage: %s driver-name [params]\n", argv[0]);
    }
finish:
    apr_pool_destroy(pool);
    apr_terminate();
    return 0;
}
