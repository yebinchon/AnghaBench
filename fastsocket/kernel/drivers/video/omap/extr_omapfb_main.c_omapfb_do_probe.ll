; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_do_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.omapfb_device = type { %struct.TYPE_8__, %struct.lcd_panel*, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_6__*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.lcd_panel = type { i32 (%struct.lcd_panel*, %struct.omapfb_device*)*, i64, i64, i32 (%struct.lcd_panel*)*, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_6__ = type { i32 (i32, i32)*, i32* }
%struct.platform_device = type { i64, %struct.TYPE_10__ }

@.str = private unnamed_addr constant [30 x i8] c"probed for an unknown device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unable to allocate memory for device info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@omap2_int_ctrl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"LCD controller not found, board not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"omapfb: configured for panel %s\0A\00", align 1
@def_vxres = common dso_local global i64 0, align 8
@def_vyres = common dso_local global i64 0, align 8
@omapfb_mmap = common dso_local global i32 0, align 4
@omapfb_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"mode setting failed\0A\00", align 1
@OMAPFB_PLANE_GFX = common dso_local global i32 0, align 4
@manual_update = common dso_local global i64 0, align 8
@OMAPFB_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAPFB_AUTO_UPDATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"registering framebuffer %d failed\0A\00", align 1
@OMAPFB_ACTIVE = common dso_local global i32 0, align 4
@omapfb_dev = common dso_local global %struct.omapfb_device* null, align 8
@.str.7 = private unnamed_addr constant [59 x i8] c"omapfb: Framebuffer initialized. Total vram %lu planes %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"omapfb: Pixclock %lu kHz hfreq %lu.%lu kHz vfreq %lu.%lu Hz\0A\00", align 1
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@omap1_ext_if = common dso_local global i32 0, align 4
@omap1_int_ctrl = common dso_local global i32 0, align 4
@omap2_ext_if = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lcd_panel*)* @omapfb_do_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_do_probe(%struct.platform_device* %0, %struct.lcd_panel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lcd_panel*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lcd_panel* %1, %struct.lcd_panel** %5, align 8
  store %struct.omapfb_device* null, %struct.omapfb_device** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %314

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %314

36:                                               ; preds = %24
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.omapfb_device* @kzalloc(i32 80, i32 %37)
  store %struct.omapfb_device* %38, %struct.omapfb_device** %6, align 8
  %39 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %40 = icmp eq %struct.omapfb_device* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %314

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %53 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %52, i32 0, i32 3
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %53, align 8
  %54 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %55 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %56 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %55, i32 0, i32 1
  store %struct.lcd_panel* %54, %struct.lcd_panel** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.omapfb_device* %58)
  %60 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %61 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %60, i32 0, i32 8
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %64 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %63, i32 0, i32 7
  store i32* @omap2_int_ctrl, i32** %64, align 8
  %65 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %66 = call i64 @omapfb_find_ctrl(%struct.omapfb_device* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %47
  %69 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %70 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %314

75:                                               ; preds = %47
  %76 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %77 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %76, i32 0, i32 1
  %78 = load %struct.lcd_panel*, %struct.lcd_panel** %77, align 8
  %79 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %78, i32 0, i32 0
  %80 = load i32 (%struct.lcd_panel*, %struct.omapfb_device*)*, i32 (%struct.lcd_panel*, %struct.omapfb_device*)** %79, align 8
  %81 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %82 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %81, i32 0, i32 1
  %83 = load %struct.lcd_panel*, %struct.lcd_panel** %82, align 8
  %84 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %85 = call i32 %80(%struct.lcd_panel* %83, %struct.omapfb_device* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %314

89:                                               ; preds = %75
  %90 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %91 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %90, i32 0, i32 1
  %92 = load %struct.lcd_panel*, %struct.lcd_panel** %91, align 8
  %93 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* @def_vxres, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i64, i64* @def_vxres, align 8
  br label %107

101:                                              ; preds = %89
  %102 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %103 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %102, i32 0, i32 1
  %104 = load %struct.lcd_panel*, %struct.lcd_panel** %103, align 8
  %105 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  br label %107

107:                                              ; preds = %101, %99
  %108 = phi i64 [ %100, %99 ], [ %106, %101 ]
  store i64 %108, i64* @def_vxres, align 8
  %109 = load i64, i64* @def_vyres, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64, i64* @def_vyres, align 8
  br label %119

113:                                              ; preds = %107
  %114 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %115 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %114, i32 0, i32 1
  %116 = load %struct.lcd_panel*, %struct.lcd_panel** %115, align 8
  %117 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  br label %119

119:                                              ; preds = %113, %111
  %120 = phi i64 [ %112, %111 ], [ %118, %113 ]
  store i64 %120, i64* @def_vyres, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %124 = call i32 @ctrl_init(%struct.omapfb_device* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %314

128:                                              ; preds = %119
  %129 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %130 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %129, i32 0, i32 5
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @omapfb_mmap, align 4
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @omapfb_ops, i32 0, i32 0), align 4
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  %140 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %141 = call i32 @check_required_callbacks(%struct.omapfb_device* %140)
  %142 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %143 = call i32 @planes_init(%struct.omapfb_device* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %314

147:                                              ; preds = %137
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %151 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ctrl_change_mode(i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %147
  %159 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %160 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %159, i32 0, i32 3
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %314

163:                                              ; preds = %147
  %164 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %165 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %164, i32 0, i32 5
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32 (i32, i32)*, i32 (i32, i32)** %167, align 8
  %169 = load i32, i32* @OMAPFB_PLANE_GFX, align 4
  %170 = call i32 %168(i32 %169, i32 1)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %314

174:                                              ; preds = %163
  %175 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %176 = load i64, i64* @manual_update, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @OMAPFB_MANUAL_UPDATE, align 4
  br label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @OMAPFB_AUTO_UPDATE, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  %184 = call i32 @omapfb_set_update_mode(%struct.omapfb_device* %175, i32 %183)
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  %187 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %188 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %187, i32 0, i32 1
  %189 = load %struct.lcd_panel*, %struct.lcd_panel** %188, align 8
  %190 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %189, i32 0, i32 3
  %191 = load i32 (%struct.lcd_panel*)*, i32 (%struct.lcd_panel*)** %190, align 8
  %192 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %193 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %192, i32 0, i32 1
  %194 = load %struct.lcd_panel*, %struct.lcd_panel** %193, align 8
  %195 = call i32 %191(%struct.lcd_panel* %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %182
  br label %314

199:                                              ; preds = %182
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  %202 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %203 = call i32 @omapfb_register_sysfs(%struct.omapfb_device* %202)
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %314

207:                                              ; preds = %199
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %246, %207
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %213 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %217, label %249

217:                                              ; preds = %210
  %218 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %219 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @register_framebuffer(i32 %224)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %217
  %229 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %230 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %229, i32 0, i32 3
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %232)
  br label %314

234:                                              ; preds = %217
  %235 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %236 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %11, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %11, align 8
  br label %246

246:                                              ; preds = %234
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %210

249:                                              ; preds = %210
  %250 = load i32, i32* @OMAPFB_ACTIVE, align 4
  %251 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %252 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %254 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %253, i32 0, i32 1
  %255 = load %struct.lcd_panel*, %struct.lcd_panel** %254, align 8
  store %struct.lcd_panel* %255, %struct.lcd_panel** %5, align 8
  %256 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %257 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = mul nsw i32 %258, 1000
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %8, align 8
  %261 = load i64, i64* %8, align 8
  %262 = mul i64 %261, 10
  %263 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %264 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %267 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %265, %268
  %270 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %271 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %270, i32 0, i32 6
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %269, %272
  %274 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %275 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %273, %276
  %278 = udiv i64 %262, %277
  store i64 %278, i64* %9, align 8
  %279 = load i64, i64* %9, align 8
  %280 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %281 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %284 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = add i64 %282, %285
  %287 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %288 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %287, i32 0, i32 9
  %289 = load i64, i64* %288, align 8
  %290 = add i64 %286, %289
  %291 = load %struct.lcd_panel*, %struct.lcd_panel** %5, align 8
  %292 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %291, i32 0, i32 10
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %290, %293
  %295 = udiv i64 %279, %294
  store i64 %295, i64* %10, align 8
  %296 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  store %struct.omapfb_device* %296, %struct.omapfb_device** @omapfb_dev, align 8
  %297 = load i64, i64* %11, align 8
  %298 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %299 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i64 %297, i32 %301)
  %303 = load i64, i64* %8, align 8
  %304 = udiv i64 %303, 1000
  %305 = load i64, i64* %9, align 8
  %306 = udiv i64 %305, 10000
  %307 = load i64, i64* %9, align 8
  %308 = urem i64 %307, 10
  %309 = load i64, i64* %10, align 8
  %310 = udiv i64 %309, 10
  %311 = load i64, i64* %10, align 8
  %312 = urem i64 %311, 10
  %313 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i64 %304, i64 %306, i64 %308, i64 %310, i64 %312)
  store i32 0, i32* %3, align 4
  br label %319

314:                                              ; preds = %228, %206, %198, %173, %158, %146, %127, %88, %68, %41, %30, %18
  %315 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @omapfb_free_resources(%struct.omapfb_device* %315, i32 %316)
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %314, %249
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.omapfb_device* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omapfb_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @omapfb_find_ctrl(%struct.omapfb_device*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @ctrl_init(%struct.omapfb_device*) #1

declare dso_local i32 @check_required_callbacks(%struct.omapfb_device*) #1

declare dso_local i32 @planes_init(%struct.omapfb_device*) #1

declare dso_local i32 @ctrl_change_mode(i32) #1

declare dso_local i32 @omapfb_set_update_mode(%struct.omapfb_device*, i32) #1

declare dso_local i32 @omapfb_register_sysfs(%struct.omapfb_device*) #1

declare dso_local i32 @register_framebuffer(i32) #1

declare dso_local i32 @omapfb_free_resources(%struct.omapfb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
