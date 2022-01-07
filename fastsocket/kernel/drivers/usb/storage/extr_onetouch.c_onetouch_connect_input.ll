; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_onetouch.c_onetouch_connect_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_onetouch.c_onetouch_connect_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.usb_onetouch*, i32, %struct.TYPE_9__*, %struct.usb_device* }
%struct.usb_onetouch = type { i32, i32, %struct.TYPE_14__*, %struct.input_dev*, i32, i32, %struct.usb_device* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_9__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.usb_device = type { i8*, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ONETOUCH_PKT_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Maxtor Onetouch %04x:%04x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@ONETOUCH_BUTTON = common dso_local global i32 0, align 4
@usb_onetouch_open = common dso_local global i32 0, align 4
@usb_onetouch_close = common dso_local global i32 0, align 4
@usb_onetouch_irq = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@onetouch_release_input = common dso_local global i32 0, align 4
@usb_onetouch_pm_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @onetouch_connect_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onetouch_connect_input(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_onetouch*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 4
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %4, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %5, align 8
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %23 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %271

30:                                               ; preds = %1
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %32 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %35, %struct.usb_endpoint_descriptor** %6, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %37 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %271

42:                                               ; preds = %30
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvintpipe(%struct.usb_device* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @usb_pipeout(i32 %50)
  %52 = call i32 @usb_maxpacket(%struct.usb_device* %48, i32 %49, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.usb_onetouch* @kzalloc(i32 40, i32 %53)
  store %struct.usb_onetouch* %54, %struct.usb_onetouch** %7, align 8
  %55 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %55, %struct.input_dev** %8, align 8
  %56 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %57 = icmp ne %struct.usb_onetouch* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %60 = icmp ne %struct.input_dev* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %42
  br label %265

62:                                               ; preds = %58
  %63 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %64 = load i32, i32* @ONETOUCH_PKT_LEN, align 4
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %67 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %66, i32 0, i32 0
  %68 = call i32 @usb_buffer_alloc(%struct.usb_device* %63, i32 %64, i32 %65, i32* %67)
  %69 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %70 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %72 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  br label %265

76:                                               ; preds = %62
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.TYPE_14__* @usb_alloc_urb(i32 0, i32 %77)
  %79 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %80 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %79, i32 0, i32 2
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %80, align 8
  %81 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %82 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %81, i32 0, i32 2
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %255

86:                                               ; preds = %76
  %87 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %88 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %89 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %88, i32 0, i32 6
  store %struct.usb_device* %87, %struct.usb_device** %89, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %91 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %92 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %91, i32 0, i32 3
  store %struct.input_dev* %90, %struct.input_dev** %92, align 8
  %93 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %99 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @strlcpy(i32 %100, i64 %103, i32 4)
  br label %105

105:                                              ; preds = %97, %86
  %106 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %117 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @strlcat(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %122 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %125 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strlcat(i32 %123, i8* %126, i32 4)
  br label %128

128:                                              ; preds = %120, %105
  %129 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %130 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @strlen(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %128
  %135 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %136 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %139 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @le16_to_cpu(i32 %141)
  %143 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %144 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le16_to_cpu(i32 %146)
  %148 = call i32 @snprintf(i32 %137, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %147)
  br label %149

149:                                              ; preds = %134, %128
  %150 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %151 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %152 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @usb_make_path(%struct.usb_device* %150, i32 %153, i32 4)
  %155 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %156 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @strlcat(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %159 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %160 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %163 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 8
  %164 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %165 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %168 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %170 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 5
  %172 = call i32 @usb_to_input_id(%struct.usb_device* %169, i32* %171)
  %173 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %174 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %173, i32 0, i32 1
  %175 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i32* %174, i32** %177, align 8
  %178 = load i32, i32* @EV_KEY, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @set_bit(i32 %178, i32 %181)
  %183 = load i32, i32* @ONETOUCH_BUTTON, align 4
  %184 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @set_bit(i32 %183, i32 %186)
  %188 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %189 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @clear_bit(i32 0, i32 %190)
  %192 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %193 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %194 = call i32 @input_set_drvdata(%struct.input_dev* %192, %struct.usb_onetouch* %193)
  %195 = load i32, i32* @usb_onetouch_open, align 4
  %196 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %197 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @usb_onetouch_close, align 4
  %199 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %200 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %202 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %201, i32 0, i32 2
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %207 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp sgt i32 %209, 8
  br i1 %210, label %211, label %212

211:                                              ; preds = %149
  br label %214

212:                                              ; preds = %149
  %213 = load i32, i32* %10, align 4
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i32 [ 8, %211 ], [ %213, %212 ]
  %216 = load i32, i32* @usb_onetouch_irq, align 4
  %217 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %218 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %219 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @usb_fill_int_urb(%struct.TYPE_14__* %203, %struct.usb_device* %204, i32 %205, i32 %208, i32 %215, i32 %216, %struct.usb_onetouch* %217, i32 %220)
  %222 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %223 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %226 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %225, i32 0, i32 2
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %230 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %231 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %230, i32 0, i32 2
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %229
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @onetouch_release_input, align 4
  %237 = load %struct.us_data*, %struct.us_data** %3, align 8
  %238 = getelementptr inbounds %struct.us_data, %struct.us_data* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %240 = load %struct.us_data*, %struct.us_data** %3, align 8
  %241 = getelementptr inbounds %struct.us_data, %struct.us_data* %240, i32 0, i32 1
  store %struct.usb_onetouch* %239, %struct.usb_onetouch** %241, align 8
  %242 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %243 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %242, i32 0, i32 3
  %244 = load %struct.input_dev*, %struct.input_dev** %243, align 8
  %245 = call i32 @input_register_device(%struct.input_dev* %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %214
  br label %250

249:                                              ; preds = %214
  store i32 0, i32* %2, align 4
  br label %271

250:                                              ; preds = %248
  %251 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %252 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = call i32 @usb_free_urb(%struct.TYPE_14__* %253)
  br label %255

255:                                              ; preds = %250, %85
  %256 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %257 = load i32, i32* @ONETOUCH_PKT_LEN, align 4
  %258 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %259 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %262 = getelementptr inbounds %struct.usb_onetouch, %struct.usb_onetouch* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @usb_buffer_free(%struct.usb_device* %256, i32 %257, i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %255, %75, %61
  %266 = load %struct.usb_onetouch*, %struct.usb_onetouch** %7, align 8
  %267 = call i32 @kfree(%struct.usb_onetouch* %266)
  %268 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %269 = call i32 @input_free_device(%struct.input_dev* %268)
  %270 = load i32, i32* %11, align 4
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %265, %249, %39, %27
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local %struct.usb_onetouch* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.usb_onetouch*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_14__*, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_onetouch*, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_14__*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_onetouch*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
