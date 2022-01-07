
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data_section ;
 int demand_empty_rest_of_line () ;
 int subseg_set (int ,int) ;

__attribute__((used)) static void
s_data1 ()
{
  subseg_set (data_section, 1);
  demand_empty_rest_of_line ();
}
