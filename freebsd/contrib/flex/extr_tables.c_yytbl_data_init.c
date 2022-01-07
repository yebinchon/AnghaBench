
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_id; int td_flags; } ;
typedef enum yytbl_id { ____Placeholder_yytbl_id } yytbl_id ;


 int YYTD_DATA32 ;
 int memset (struct yytbl_data*,int ,int) ;

int yytbl_data_init (struct yytbl_data *td, enum yytbl_id id)
{

 memset (td, 0, sizeof (struct yytbl_data));
 td->td_id = id;
 td->td_flags = YYTD_DATA32;
 return 0;
}
