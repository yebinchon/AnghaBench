; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_mdc800.c_mdc800_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, i32, %struct.usb_device*, i32, i32, i32, i32, i32, i64 }
%struct.usb_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.usb_device_id = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"(mdc800_usb_probe) called.\00", align 1
@mdc800 = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"only one Mustek MDC800 is supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"probe fails -> wrong Number of Configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"probe fails -> wrong Interface\0A\00", align 1
@mdc800_ed = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"probe fails -> Wrong Endpoints.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Found Mustek MDC800 on USB.\0A\00", align 1
@mdc800_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@mdc800_usb_irq = common dso_local global i32 0, align 4
@mdc800_usb_write_notify = common dso_local global i32 0, align 4
@mdc800_usb_download_notify = common dso_local global i32 0, align 4
@READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mdc800_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc800_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %18 = icmp ne %struct.usb_device* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %249

25:                                               ; preds = %2
  %26 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %249

37:                                               ; preds = %25
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 1
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %39, align 8
  store %struct.usb_host_interface* %40, %struct.usb_host_interface** %8, align 8
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 255
  br i1 %45, label %64, label %46

46:                                               ; preds = %37
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %48 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %54 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %60 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %64, label %70

64:                                               ; preds = %58, %52, %46, %37
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %249

70:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %147, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %150

74:                                               ; preds = %71
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 -1, i32* %80, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %128, %74
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %131

84:                                               ; preds = %81
  %85 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %86 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32*, i32** @mdc800_ed, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i64 @mdc800_endpoint_equals(%struct.TYPE_13__* %91, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %84
  %99 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %100 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %118 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %116, %98
  br label %127

127:                                              ; preds = %126, %84
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %81

131:                                              ; preds = %81
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %142 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %141, i32 0, i32 0
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %249

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %71

150:                                              ; preds = %71
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %151, i32 0, i32 0
  %153 = call i32 @dev_info(i32* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = call i32 @mutex_lock(i32* %155)
  %157 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %158 = call i32 @usb_register_dev(%struct.usb_interface* %157, i32* @mdc800_class)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %150
  %162 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %163 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %162, i32 0, i32 0
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %249

170:                                              ; preds = %150
  %171 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  store %struct.usb_device* %171, %struct.usb_device** %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 10
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = load %struct.usb_device*, %struct.usb_device** %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 4
  %184 = load %struct.usb_device*, %struct.usb_device** %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @usb_rcvintpipe(%struct.usb_device* %184, i32 %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @mdc800_usb_irq, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @usb_fill_int_urb(i32 %178, %struct.usb_device* %181, i32 %190, i32 %193, i32 8, i32 %194, %struct.TYPE_12__* %195, i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 4
  %203 = load %struct.usb_device*, %struct.usb_device** %202, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load %struct.usb_device*, %struct.usb_device** %205, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @usb_sndbulkpipe(%struct.usb_device* %206, i32 %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @mdc800_usb_write_notify, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %218 = call i32 @usb_fill_bulk_urb(i32 %200, %struct.usb_device* %203, i32 %212, i32 %215, i32 8, i32 %216, %struct.TYPE_12__* %217)
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 4
  %224 = load %struct.usb_device*, %struct.usb_device** %223, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 4
  %227 = load %struct.usb_device*, %struct.usb_device** %226, align 8
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %227, i32 %232)
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @mdc800_usb_download_notify, align 4
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %239 = call i32 @usb_fill_bulk_urb(i32 %221, %struct.usb_device* %224, i32 %233, i32 %236, i32 64, i32 %237, %struct.TYPE_12__* %238)
  %240 = load i32, i32* @READY, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = call i32 @mutex_unlock(i32* %244)
  %246 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mdc800, align 8
  %248 = call i32 @usb_set_intfdata(%struct.usb_interface* %246, %struct.TYPE_12__* %247)
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %170, %161, %140, %64, %31, %19
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @mdc800_endpoint_equals(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
