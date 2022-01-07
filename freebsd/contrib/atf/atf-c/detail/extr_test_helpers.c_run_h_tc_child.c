
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_h_tc_data {int m_resname; int m_tc; } ;


 int RE (int ) ;
 int atf_tc_run (int ,int ) ;

__attribute__((used)) static
void
run_h_tc_child(void *v)
{
    struct run_h_tc_data *data = (struct run_h_tc_data *)v;

    RE(atf_tc_run(data->m_tc, data->m_resname));
}
