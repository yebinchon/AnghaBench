; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.resource = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i8* (...)* }

@screen_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VIDEO_TYPE_VLFB = common dso_local global i64 0, align 8
@VIDEO_TYPE_EFI = common dso_local global i64 0, align 8
@vga_video_num_lines = common dso_local global i32 0, align 4
@vga_video_num_columns = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vga_vram_base = common dso_local global i32 0, align 4
@VGA_CRT_IM = common dso_local global i32 0, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@VGA_CRT_DM = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@vgacon_startup.ega_console_resource = internal global %struct.resource { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 944, i32 959 }, align 8
@.str = private unnamed_addr constant [4 x i8] c"ega\00", align 1
@VIDEO_TYPE_EGAM = common dso_local global i64 0, align 8
@vga_video_type = common dso_local global i64 0, align 8
@vga_vram_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"EGA+\00", align 1
@ioport_resource = common dso_local global i32 0, align 4
@vgacon_startup.mda1_console_resource = internal global %struct.resource { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 944, i32 955 }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"mda\00", align 1
@vgacon_startup.mda2_console_resource = internal global %struct.resource { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 959, i32 959 }, align 8
@VIDEO_TYPE_MDA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"*MDA\00", align 1
@vga_video_font_height = common dso_local global i32 0, align 4
@vga_can_do_color = common dso_local global i32 0, align 4
@VGA_CRT_IC = common dso_local global i32 0, align 4
@VGA_CRT_DC = common dso_local global i32 0, align 4
@vgacon_startup.ega_console_resource.4 = internal global %struct.resource { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 960, i32 991 }, align 8
@VIDEO_TYPE_EGAC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"EGA\00", align 1
@vgacon_startup.vga_console_resource = internal global %struct.resource { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 960, i32 991 }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"vga+\00", align 1
@VIDEO_TYPE_VGAC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"VGA+\00", align 1
@VGA_IS1_RC = common dso_local global i32 0, align 4
@VGA_ATT_W = common dso_local global i32 0, align 4
@color_table = common dso_local global i32* null, align 8
@VGA_PEL_IW = common dso_local global i32 0, align 4
@default_red = common dso_local global i32* null, align 8
@VGA_PEL_D = common dso_local global i32 0, align 4
@default_grn = common dso_local global i32* null, align 8
@default_blu = common dso_local global i32* null, align 8
@vgacon_startup.cga_console_resource = internal global %struct.resource { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 980, i32 981 }, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"cga\00", align 1
@VIDEO_TYPE_CGA = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"*CGA\00", align 1
@vga_vram_end = common dso_local global i32 0, align 4
@vga_hardscroll_user_enable = common dso_local global i32 0, align 4
@vga_hardscroll_enabled = common dso_local global i32 0, align 4
@vga_default_font_height = common dso_local global i32 0, align 4
@vga_scan_lines = common dso_local global i32 0, align 4
@VGA_FONTWIDTH = common dso_local global i32 0, align 4
@vgacon_xres = common dso_local global i32 0, align 4
@vgacon_yres = common dso_local global i32 0, align 4
@vga_init_done = common dso_local global i32 0, align 4
@VGA_GFX_D = common dso_local global i32 0, align 4
@VGA_GFX_I = common dso_local global i32 0, align 4
@conswitchp = common dso_local global %struct.TYPE_7__* null, align 8
@dummy_con = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @vgacon_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vgacon_startup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 0), align 8
  %8 = load i64, i64* @VIDEO_TYPE_VLFB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 0), align 8
  %12 = load i64, i64* @VIDEO_TYPE_EFI, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %0
  br label %15

15:                                               ; preds = %186, %164, %41, %25, %14
  store i8* null, i8** %1, align 8
  br label %231

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 2), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 3), align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %15

26:                                               ; preds = %22, %19, %16
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %37 = icmp eq i32 %36, 18
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %40 = icmp eq i32 %39, 106
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %29, %26
  br label %15

42:                                               ; preds = %38
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 2), align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @vga_video_num_lines, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 3), align 8
  store i32 %45, i32* @vga_video_num_columns, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 1), align 8
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  store i32 720896, i32* @vga_vram_base, align 4
  %49 = load i32, i32* @VGA_CRT_IM, align 4
  store i32 %49, i32* @vga_video_port_reg, align 4
  %50 = load i32, i32* @VGA_CRT_DM, align 4
  store i32 %50, i32* @vga_video_port_val, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 4), align 4
  %52 = and i32 %51, 255
  %53 = icmp ne i32 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  store i64 %55, i64* @vga_video_type, align 8
  store i32 32768, i32* @vga_vram_size, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %56 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.ega_console_resource)
  br label %61

57:                                               ; preds = %48
  %58 = load i64, i64* @VIDEO_TYPE_MDA, align 8
  store i64 %58, i64* @vga_video_type, align 8
  store i32 8192, i32* @vga_vram_size, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %59 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.mda1_console_resource)
  %60 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.mda2_console_resource)
  store i32 14, i32* @vga_video_font_height, align 4
  br label %61

61:                                               ; preds = %57, %54
  br label %136

62:                                               ; preds = %42
  store i32 1, i32* @vga_can_do_color, align 4
  store i32 753664, i32* @vga_vram_base, align 4
  %63 = load i32, i32* @VGA_CRT_IC, align 4
  store i32 %63, i32* @vga_video_port_reg, align 4
  %64 = load i32, i32* @VGA_CRT_DC, align 4
  store i32 %64, i32* @vga_video_port_val, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 4), align 4
  %66 = and i32 %65, 255
  %67 = icmp ne i32 %66, 16
  br i1 %67, label %68, label %132

68:                                               ; preds = %62
  store i32 32768, i32* @vga_vram_size, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 0), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @VIDEO_TYPE_EGAC, align 8
  store i64 %72, i64* @vga_video_type, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  %73 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.ega_console_resource.4)
  br label %131

74:                                               ; preds = %68
  %75 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  store i64 %75, i64* @vga_video_type, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  %76 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.vga_console_resource)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %89, %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32, i32* @VGA_IS1_RC, align 4
  %82 = call i32 @inb_p(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @VGA_ATT_W, align 4
  %85 = call i32 @outb_p(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @VGA_ATT_W, align 4
  %88 = call i32 @outb_p(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load i32, i32* @VGA_ATT_W, align 4
  %94 = call i32 @outb_p(i32 32, i32 %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %127, %92
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %130

98:                                               ; preds = %95
  %99 = load i32*, i32** @color_table, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @VGA_PEL_IW, align 4
  %105 = call i32 @outb_p(i32 %103, i32 %104)
  %106 = load i32*, i32** @default_red, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VGA_PEL_D, align 4
  %112 = call i32 @outb_p(i32 %110, i32 %111)
  %113 = load i32*, i32** @default_grn, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @VGA_PEL_D, align 4
  %119 = call i32 @outb_p(i32 %117, i32 %118)
  %120 = load i32*, i32** @default_blu, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @VGA_PEL_D, align 4
  %126 = call i32 @outb_p(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %98
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %95

130:                                              ; preds = %95
  br label %131

131:                                              ; preds = %130, %71
  br label %135

132:                                              ; preds = %62
  %133 = load i64, i64* @VIDEO_TYPE_CGA, align 8
  store i64 %133, i64* @vga_video_type, align 8
  store i32 8192, i32* @vga_vram_size, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  %134 = call i32 @request_resource(i32* @ioport_resource, %struct.resource* @vgacon_startup.cga_console_resource)
  store i32 8, i32* @vga_video_font_height, align 4
  br label %135

135:                                              ; preds = %132, %131
  br label %136

136:                                              ; preds = %135, %61
  %137 = load i32, i32* @vga_vram_base, align 4
  %138 = load i32, i32* @vga_vram_size, align 4
  %139 = call i32 @VGA_MAP_MEM(i32 %137, i32 %138)
  store i32 %139, i32* @vga_vram_base, align 4
  %140 = load i32, i32* @vga_vram_base, align 4
  %141 = load i32, i32* @vga_vram_size, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* @vga_vram_end, align 4
  %143 = load i32, i32* @vga_vram_base, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** %5, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @scr_readw(i32* %146)
  store i32 %147, i32* %3, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = call i32 @scr_readw(i32* %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @scr_writew(i32 43605, i32* %151)
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = call i32 @scr_writew(i32 21930, i32* %154)
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @scr_readw(i32* %156)
  %158 = icmp ne i32 %157, 43605
  br i1 %158, label %164, label %159

159:                                              ; preds = %136
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = call i32 @scr_readw(i32* %161)
  %163 = icmp ne i32 %162, 21930
  br i1 %163, label %164, label %172

164:                                              ; preds = %159, %136
  %165 = load i32, i32* %3, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @scr_writew(i32 %165, i32* %166)
  %168 = load i32, i32* %4, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = call i32 @scr_writew(i32 %168, i32* %170)
  br label %15

172:                                              ; preds = %159
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @scr_writew(i32 21930, i32* %173)
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = call i32 @scr_writew(i32 43605, i32* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @scr_readw(i32* %178)
  %180 = icmp ne i32 %179, 21930
  br i1 %180, label %186, label %181

181:                                              ; preds = %172
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = call i32 @scr_readw(i32* %183)
  %185 = icmp ne i32 %184, 43605
  br i1 %185, label %186, label %194

186:                                              ; preds = %181, %172
  %187 = load i32, i32* %3, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @scr_writew(i32 %187, i32* %188)
  %190 = load i32, i32* %4, align 4
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = call i32 @scr_writew(i32 %190, i32* %192)
  br label %15

194:                                              ; preds = %181
  %195 = load i32, i32* %3, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @scr_writew(i32 %195, i32* %196)
  %198 = load i32, i32* %4, align 4
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = call i32 @scr_writew(i32 %198, i32* %200)
  %202 = load i64, i64* @vga_video_type, align 8
  %203 = load i64, i64* @VIDEO_TYPE_EGAC, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %213, label %205

205:                                              ; preds = %194
  %206 = load i64, i64* @vga_video_type, align 8
  %207 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* @vga_video_type, align 8
  %211 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %209, %205, %194
  %214 = load i32, i32* @vga_hardscroll_user_enable, align 4
  store i32 %214, i32* @vga_hardscroll_enabled, align 4
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 5), align 8
  store i32 %215, i32* @vga_default_font_height, align 4
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 5), align 8
  store i32 %216, i32* @vga_video_font_height, align 4
  %217 = load i32, i32* @vga_video_font_height, align 4
  %218 = load i32, i32* @vga_video_num_lines, align 4
  %219 = mul nsw i32 %217, %218
  store i32 %219, i32* @vga_scan_lines, align 4
  br label %220

220:                                              ; preds = %213, %209
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @screen_info, i32 0, i32 3), align 8
  %222 = load i32, i32* @VGA_FONTWIDTH, align 4
  %223 = mul nsw i32 %221, %222
  store i32 %223, i32* @vgacon_xres, align 4
  %224 = load i32, i32* @vga_scan_lines, align 4
  store i32 %224, i32* @vgacon_yres, align 4
  %225 = load i32, i32* @vga_init_done, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %220
  %228 = call i32 (...) @vgacon_scrollback_startup()
  store i32 1, i32* @vga_init_done, align 4
  br label %229

229:                                              ; preds = %227, %220
  %230 = load i8*, i8** %2, align 8
  store i8* %230, i8** %1, align 8
  br label %231

231:                                              ; preds = %229, %15
  %232 = load i8*, i8** %1, align 8
  ret i8* %232
}

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @VGA_MAP_MEM(i32, i32) #1

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32*) #1

declare dso_local i32 @vgacon_scrollback_startup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
