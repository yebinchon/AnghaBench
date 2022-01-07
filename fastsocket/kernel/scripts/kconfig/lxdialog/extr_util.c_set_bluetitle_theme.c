
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLUE ;
 int COLOR_WHITE ;
 int COLOR_YELLOW ;
 int DLG_COLOR (int ,int ,int ,int) ;
 int button_key_active ;
 int button_label_active ;
 int position_indicator ;
 int searchbox_title ;
 int set_classic_theme () ;
 int tag ;
 int tag_key ;
 int title ;

__attribute__((used)) static void set_bluetitle_theme(void)
{
 set_classic_theme();
 DLG_COLOR(title, COLOR_BLUE, COLOR_WHITE, 1);
 DLG_COLOR(button_key_active, COLOR_YELLOW, COLOR_BLUE, 1);
 DLG_COLOR(button_label_active, COLOR_WHITE, COLOR_BLUE, 1);
 DLG_COLOR(searchbox_title, COLOR_BLUE, COLOR_WHITE, 1);
 DLG_COLOR(position_indicator, COLOR_BLUE, COLOR_WHITE, 1);
 DLG_COLOR(tag, COLOR_BLUE, COLOR_WHITE, 1);
 DLG_COLOR(tag_key, COLOR_BLUE, COLOR_WHITE, 1);

}
