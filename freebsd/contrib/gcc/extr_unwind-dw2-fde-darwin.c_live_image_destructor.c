
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct live_images {int examined_p; int * destructor; int * fde; int * object_info; } ;
struct km_object_info {int unseen_objects; int seen_objects; } ;


 int ALLOCED_IMAGE_MASK ;
 int KEYMGR_GCC3_DW2_OBJ_LIST ;
 int __deregister_frame_info_bases (int *) ;
 struct km_object_info* _keymgr_get_and_lock_processwide_ptr (int ) ;
 int _keymgr_set_and_unlock_processwide_ptr (int ,struct km_object_info*) ;
 int free (int *) ;
 int seen_objects ;
 int unseen_objects ;

__attribute__((used)) static void
live_image_destructor (struct live_images *image)
{
  if (image->object_info)
    {
      struct km_object_info *the_obj_info;

      the_obj_info =
 _keymgr_get_and_lock_processwide_ptr (KEYMGR_GCC3_DW2_OBJ_LIST);
      if (the_obj_info)
 {
   seen_objects = the_obj_info->seen_objects;
   unseen_objects = the_obj_info->unseen_objects;


   __deregister_frame_info_bases (image->fde);

   the_obj_info->seen_objects = seen_objects;
   the_obj_info->unseen_objects = unseen_objects;
 }
      _keymgr_set_and_unlock_processwide_ptr (KEYMGR_GCC3_DW2_OBJ_LIST,
           the_obj_info);

      free (image->object_info);
      image->object_info = ((void*)0);
      if (image->examined_p & ALLOCED_IMAGE_MASK)
 free (image->fde);
      image->fde = ((void*)0);
    }
  image->examined_p = 0;
  image->destructor = ((void*)0);
}
