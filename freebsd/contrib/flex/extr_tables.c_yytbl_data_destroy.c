
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {struct yytbl_data* td_data; } ;


 int free (struct yytbl_data*) ;

int yytbl_data_destroy (struct yytbl_data *td)
{
 if (td->td_data)
  free (td->td_data);
 td->td_data = 0;
 free (td);
 return 0;
}
