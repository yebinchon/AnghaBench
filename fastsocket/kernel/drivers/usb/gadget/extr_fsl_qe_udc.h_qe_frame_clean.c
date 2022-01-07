
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_frame {int dummy; } ;


 int FRAME_OK ;
 int frame_set_data (struct qe_frame*,int *) ;
 int frame_set_info (struct qe_frame*,int ) ;
 int frame_set_length (struct qe_frame*,int ) ;
 int frame_set_privdata (struct qe_frame*,int *) ;
 int frame_set_status (struct qe_frame*,int ) ;

__attribute__((used)) static inline void qe_frame_clean(struct qe_frame *frm)
{
 frame_set_data(frm, ((void*)0));
 frame_set_length(frm, 0);
 frame_set_status(frm, FRAME_OK);
 frame_set_info(frm, 0);
 frame_set_privdata(frm, ((void*)0));
}
