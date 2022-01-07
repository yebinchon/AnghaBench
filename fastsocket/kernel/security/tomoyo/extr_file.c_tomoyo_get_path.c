
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int name; } ;
struct tomoyo_path_info_with_data {struct tomoyo_path_info head; int body; } ;
struct path {int dummy; } ;


 struct tomoyo_path_info_with_data* tomoyo_alloc (int) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 int tomoyo_free (struct tomoyo_path_info_with_data*) ;
 int tomoyo_realpath_from_path2 (struct path*,int ,int) ;

__attribute__((used)) static struct tomoyo_path_info *tomoyo_get_path(struct path *path)
{
 int error;
 struct tomoyo_path_info_with_data *buf = tomoyo_alloc(sizeof(*buf));

 if (!buf)
  return ((void*)0);

 error = tomoyo_realpath_from_path2(path, buf->body,
        sizeof(buf->body) - 2);
 if (!error) {
  buf->head.name = buf->body;
  tomoyo_fill_path_info(&buf->head);
  return &buf->head;
 }
 tomoyo_free(buf);
 return ((void*)0);
}
