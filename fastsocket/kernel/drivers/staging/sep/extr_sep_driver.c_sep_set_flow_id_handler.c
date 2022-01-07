
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_flow_context_t {unsigned long flow_id; } ;
struct sep_device {int dummy; } ;


 int EINVAL ;
 int SEP_TEMP_FLOW_ID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sep_flow_context_t* sep_find_flow_context (struct sep_device*,int ) ;
 int sep_mutex ;

__attribute__((used)) static int sep_set_flow_id_handler(struct sep_device *sep,
      unsigned long flow_id)
{
 int error = 0;
 struct sep_flow_context_t *flow_data_ptr;




 mutex_lock(&sep_mutex);
 flow_data_ptr = sep_find_flow_context(sep, SEP_TEMP_FLOW_ID);
 if (flow_data_ptr)
  flow_data_ptr->flow_id = flow_id;
 else
  error = -EINVAL;
 mutex_unlock(&sep_mutex);
 return error;
}
