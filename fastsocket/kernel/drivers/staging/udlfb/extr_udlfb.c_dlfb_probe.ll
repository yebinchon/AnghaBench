; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dlfb_data = type { i32, %struct.TYPE_17__*, %struct.fb_info*, i32, i8*, i32, i32*, i32, i32*, %struct.usb_interface*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.fb_info = type { i32, i32*, i32, %struct.TYPE_12__, %struct.TYPE_16__, i32*, %struct.dlfb_data*, %struct.dlfb_data* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot allocate dev_info structure.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"DisplayLink device attached\0A\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"unable to allocate memory for dlfb commands\0A\00", align 1
@dlfb_bulk_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ret control msg 0: %d %x%x%x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"non posso allocare il framebuffer displaylink\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"EDID XRES %d YRES %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"found valid mode...%d\0A\00", align 1
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@dlfb_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"cannot allocate framebuffer virtual memory of %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"screen base allocated !!!\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"non posso allocare il backing buffer\0A\00", align 1
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"colormap allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dlfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dlfb_data*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 88, i32 %10)
  %12 = bitcast i8* %11 to %struct.dlfb_data*
  store %struct.dlfb_data* %12, %struct.dlfb_data** %6, align 8
  %13 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %14 = icmp eq %struct.dlfb_data* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %386

19:                                               ; preds = %2
  %20 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %21 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %20, i32 0, i32 10
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = call i32 @interface_to_usbdev(%struct.usb_interface* %23)
  %25 = call %struct.TYPE_17__* @usb_get_dev(i32 %24)
  %26 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %27 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %26, i32 0, i32 1
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %27, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %30 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %29, i32 0, i32 9
  store %struct.usb_interface* %28, %struct.usb_interface** %30, align 8
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %34 = call i32 @usb_set_intfdata(%struct.usb_interface* %32, %struct.dlfb_data* %33)
  %35 = load i32, i32* @BUF_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %39 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %38, i32 0, i32 6
  store i32* %37, i32** %39, align 8
  %40 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %41 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %375

46:                                               ; preds = %19
  %47 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %48 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @BUF_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %54 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %53, i32 0, i32 8
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @usb_alloc_urb(i32 0, i32 %55)
  %57 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %58 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %60 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %63 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %66 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = call i32 @usb_sndbulkpipe(%struct.TYPE_17__* %67, i32 1)
  %69 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %70 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @dlfb_bulk_callback, align 4
  %73 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %74 = call i32 @usb_fill_bulk_urb(i32 %61, %struct.TYPE_17__* %64, i32 %68, i32* %71, i32 0, i32 %72, %struct.dlfb_data* %73)
  %75 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %76 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %79 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = call i32 @usb_rcvctrlpipe(%struct.TYPE_17__* %80, i32 0)
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %83 = call i32 @usb_control_msg(%struct.TYPE_17__* %77, i32 %81, i32 6, i32 192, i32 0, i32 0, i8* %82, i32 4, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87, i32 %90, i32 %93, i32 %96)
  %98 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %99 = call i32 @dlfb_edid(%struct.dlfb_data* %98)
  %100 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %101 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = call %struct.fb_info* @framebuffer_alloc(i32 1024, i32* %103)
  store %struct.fb_info* %104, %struct.fb_info** %7, align 8
  %105 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %106 = icmp ne %struct.fb_info* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %46
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %375

109:                                              ; preds = %46
  %110 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %111 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 3
  %115 = call i32 @fb_parse_edid(i32 %112, %struct.TYPE_12__* %114)
  %116 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %123)
  %125 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %126 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %127 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @dlfb_set_video_mode(%struct.dlfb_data* %125, i32 %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %109
  %137 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 1280, i32* %139, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 1024, i32* %142, align 4
  %143 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %144 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @dlfb_set_video_mode(%struct.dlfb_data* %143, i32 %147, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %136
  br label %375

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155, %109
  %157 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 6
  %164 = load %struct.dlfb_data*, %struct.dlfb_data** %163, align 8
  %165 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 7
  store %struct.dlfb_data* %164, %struct.dlfb_data** %166, align 8
  %167 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %168 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 6
  store %struct.dlfb_data* %167, %struct.dlfb_data** %169, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %171 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %172 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %171, i32 0, i32 2
  store %struct.fb_info* %170, %struct.fb_info** %172, align 8
  %173 = load i32, i32* @FBINFO_DEFAULT, align 4
  %174 = load i32, i32* @FBINFO_READS_FAST, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %183 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 5
  store i32* @dlfb_ops, i32** %185, align 8
  %186 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %187 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32* @rvmalloc(i32 %188)
  %190 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %191 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %190, i32 0, i32 1
  store i32* %189, i32** %191, align 8
  %192 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %156
  %197 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %198 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %199)
  br label %372

201:                                              ; preds = %156
  %202 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %203 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %204 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call i8* @kzalloc(i32 %205, i32 %206)
  %208 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %209 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %211 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %201
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %201
  %217 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  store i32 16, i32* %219, align 8
  %220 = load i32, i32* @FB_ACTIVATE_TEST, align 4
  %221 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 7
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %225 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %226 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 6
  store i32 %224, i32* %227, align 8
  %228 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %229 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32 11, i32* %231, align 8
  %232 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  store i32 5, i32* %235, align 4
  %236 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %237 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  store i64 0, i64* %239, align 8
  %240 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %241 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  store i32 5, i32* %243, align 8
  %244 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %245 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  store i32 6, i32* %247, align 4
  %248 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  store i64 0, i64* %251, align 8
  %252 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %253 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  %256 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %257 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  store i32 5, i32* %259, align 8
  %260 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %261 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  store i64 0, i64* %263, align 8
  %264 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %265 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = ptrtoint i32* %266 to i64
  %268 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %269 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  %271 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %272 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @PAGE_ALIGN(i32 %273)
  %275 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %276 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 6
  store i32 %274, i32* %277, align 4
  %278 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %279 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %278, i32 0, i32 1
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @strlen(i32 %282)
  %284 = icmp sgt i32 %283, 15
  br i1 %284, label %285, label %296

285:                                              ; preds = %216
  %286 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %291 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %290, i32 0, i32 1
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @memcpy(i32 %289, i32 %294, i32 15)
  br label %313

296:                                              ; preds = %216
  %297 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %298 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %302 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %301, i32 0, i32 1
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %307 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %306, i32 0, i32 1
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @strlen(i32 %310)
  %312 = call i32 @memcpy(i32 %300, i32 %305, i32 %311)
  br label %313

313:                                              ; preds = %296, %285
  %314 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %315 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %316 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 4
  store i32 %314, i32* %317, align 4
  %318 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %319 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %320 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 3
  store i32 %318, i32* %321, align 8
  %322 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %323 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %326 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 1
  store i32 %324, i32* %327, align 8
  %328 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %329 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %332 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 2
  store i32 %330, i32* %333, align 4
  %334 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %335 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %334, i32 0, i32 2
  %336 = call i64 @fb_alloc_cmap(i32* %335, i32 256, i32 0)
  %337 = icmp slt i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %313
  br label %364

339:                                              ; preds = %313
  %340 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %341 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %342 = call i64 @register_framebuffer(%struct.fb_info* %341)
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  br label %360

345:                                              ; preds = %339
  %346 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %347 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %348 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %347, i32 0, i32 2
  %349 = load %struct.fb_info*, %struct.fb_info** %348, align 8
  %350 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %354 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %353, i32 0, i32 2
  %355 = load %struct.fb_info*, %struct.fb_info** %354, align 8
  %356 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @draw_rect(%struct.dlfb_data* %346, i32 0, i32 0, i32 %352, i32 %358, i32 48, i32 255, i32 48)
  store i32 0, i32* %3, align 4
  br label %386

360:                                              ; preds = %344
  %361 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %362 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %361, i32 0, i32 2
  %363 = call i32 @fb_dealloc_cmap(i32* %362)
  br label %364

364:                                              ; preds = %360, %338
  %365 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %366 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %369 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @rvfree(i32* %367, i32 %370)
  br label %372

372:                                              ; preds = %364, %196
  %373 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %374 = call i32 @framebuffer_release(%struct.fb_info* %373)
  br label %375

375:                                              ; preds = %372, %154, %107, %44
  %376 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %377 = call i32 @usb_set_intfdata(%struct.usb_interface* %376, %struct.dlfb_data* null)
  %378 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %379 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %378, i32 0, i32 1
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %379, align 8
  %381 = call i32 @usb_put_dev(%struct.TYPE_17__* %380)
  %382 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %383 = call i32 @kfree(%struct.dlfb_data* %382)
  %384 = load i32, i32* @ENOMEM, align 4
  %385 = sub nsw i32 0, %384
  store i32 %385, i32* %3, align 4
  br label %386

386:                                              ; preds = %375, %345, %15
  %387 = load i32, i32* %3, align 4
  ret i32 %387
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_17__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dlfb_data*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.TYPE_17__*, i32, i32*, i32, i32, %struct.dlfb_data*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dlfb_edid(%struct.dlfb_data*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @fb_parse_edid(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @dlfb_set_video_mode(%struct.dlfb_data*, i32, i32) #1

declare dso_local i32* @rvmalloc(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @draw_rect(%struct.dlfb_data*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @rvfree(i32*, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_17__*) #1

declare dso_local i32 @kfree(%struct.dlfb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
