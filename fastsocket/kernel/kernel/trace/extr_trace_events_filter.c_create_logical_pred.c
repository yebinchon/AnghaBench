
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_pred {int op; } ;


 int GFP_KERNEL ;
 struct filter_pred* kzalloc (int,int ) ;

__attribute__((used)) static struct filter_pred *create_logical_pred(int op)
{
 struct filter_pred *pred;

 pred = kzalloc(sizeof(*pred), GFP_KERNEL);
 if (!pred)
  return ((void*)0);

 pred->op = op;

 return pred;
}
