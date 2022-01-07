
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {int m_type; int m_cond; } ;


 int EXIT_SUCCESS ;
 int INV (int ) ;
 int POST (int ) ;
 int PRE (int ) ;
 int UNREACHABLE ;
 int exit (int ) ;





__attribute__((used)) static
void
do_test_child(void *v)
{
    struct test_data *td = v;

    switch (td->m_type) {
    case 131:
        INV(td->m_cond);
        break;

    case 129:
        PRE(td->m_cond);
        break;

    case 130:
        POST(td->m_cond);
        break;

    case 128:
        if (!td->m_cond)
            UNREACHABLE;
        break;
    }

    exit(EXIT_SUCCESS);
}
