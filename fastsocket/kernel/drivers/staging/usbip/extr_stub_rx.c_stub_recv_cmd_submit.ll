; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_stub_recv_cmd_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_stub_recv_cmd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { %struct.TYPE_11__*, %struct.usbip_device }
%struct.TYPE_11__ = type { i32 }
%struct.usbip_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.stub_priv = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.usb_device*, i8*, i8*, i8* }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"malloc urb\0A\00", align 1
@SDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc x_buff\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"allocate setup_packet\0A\00", align 1
@stub_complete = common dso_local global i32 0, align 4
@USBIP_CMD_SUBMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"submit urb ok, seqnum %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"submit_urb error, %d\0A\00", align 1
@SDEV_EVENT_ERROR_SUBMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stub_device*, %struct.usbip_header*)* @stub_recv_cmd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_recv_cmd_submit(%struct.stub_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.stub_device*, align 8
  %4 = alloca %struct.usbip_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stub_priv*, align 8
  %7 = alloca %struct.usbip_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.stub_device* %0, %struct.stub_device** %3, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %4, align 8
  %10 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %11 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %10, i32 0, i32 1
  store %struct.usbip_device* %11, %struct.usbip_device** %7, align 8
  %12 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %13 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_11__* %14)
  store %struct.usb_device* %15, %struct.usb_device** %8, align 8
  %16 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %17 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %18 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %22 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_pipe(%struct.stub_device* %16, i32 %20, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %27 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %28 = call %struct.stub_priv* @stub_priv_alloc(%struct.stub_device* %26, %struct.usbip_header* %27)
  store %struct.stub_priv* %28, %struct.stub_priv** %6, align 8
  %29 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %30 = icmp ne %struct.stub_priv* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %214

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @usb_pipeisoc(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %38 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @usb_alloc_urb(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_15__*
  %45 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %46 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %45, i32 0, i32 0
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %46, align 8
  br label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @usb_alloc_urb(i32 0, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_15__*
  %51 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %52 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %51, i32 0, i32 0
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %52, align 8
  br label %53

53:                                               ; preds = %47, %36
  %54 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %55 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %60 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %65 = load i32, i32* @SDEV_EVENT_ERROR_MALLOC, align 4
  %66 = call i32 @usbip_event_add(%struct.usbip_device* %64, i32 %65)
  br label %214

67:                                               ; preds = %53
  %68 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %69 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %67
  %75 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %76 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kzalloc(i32 %80, i32 %81)
  %83 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %84 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 5
  store i8* %82, i8** %86, align 8
  %87 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %88 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %74
  %94 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %95 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %100 = load i32, i32* @SDEV_EVENT_ERROR_MALLOC, align 4
  %101 = call i32 @usbip_event_add(%struct.usbip_device* %99, i32 %100)
  br label %214

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kzalloc(i32 8, i32 %104)
  %106 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %107 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  store i8* %105, i8** %109, align 8
  %110 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %111 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %118 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %123 = load i32, i32* @SDEV_EVENT_ERROR_MALLOC, align 4
  %124 = call i32 @usbip_event_add(%struct.usbip_device* %122, i32 %123)
  br label %214

125:                                              ; preds = %103
  %126 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %127 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %126, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %132 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = call i32 @memcpy(i8* %130, i32* %134, i32 8)
  %136 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %137 = bitcast %struct.stub_priv* %136 to i8*
  %138 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %139 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  store i8* %137, i8** %141, align 8
  %142 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %143 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %144 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  store %struct.usb_device* %142, %struct.usb_device** %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %149 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 8
  %152 = load i32, i32* @stub_complete, align 4
  %153 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %154 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %153, i32 0, i32 0
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i32 %152, i32* %156, align 4
  %157 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %158 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %159 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load i32, i32* @USBIP_CMD_SUBMIT, align 4
  %162 = call i32 @usbip_pack_pdu(%struct.usbip_header* %157, %struct.TYPE_15__* %160, i32 %161, i32 0)
  %163 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %164 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %165 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = call i64 @usbip_recv_xbuff(%struct.usbip_device* %163, %struct.TYPE_15__* %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %125
  br label %214

170:                                              ; preds = %125
  %171 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %172 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %173 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %172, i32 0, i32 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = call i64 @usbip_recv_iso(%struct.usbip_device* %171, %struct.TYPE_15__* %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %214

178:                                              ; preds = %170
  %179 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %180 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %179, i32 0, i32 0
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = call i32 @tweak_special_requests(%struct.TYPE_15__* %181)
  %183 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %184 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %183, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call i32 @usb_submit_urb(%struct.TYPE_15__* %185, i32 %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %178
  %191 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %192 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i8*, ...) @usbip_dbg_stub_rx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %212

196:                                              ; preds = %178
  %197 = load %struct.stub_device*, %struct.stub_device** %3, align 8
  %198 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %197, i32 0, i32 0
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %5, align 4
  %202 = call i32 (i32*, i8*, ...) @dev_err(i32* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %201)
  %203 = load %struct.usbip_header*, %struct.usbip_header** %4, align 8
  %204 = call i32 @usbip_dump_header(%struct.usbip_header* %203)
  %205 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %206 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = call i32 @usbip_dump_urb(%struct.TYPE_15__* %207)
  %209 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %210 = load i32, i32* @SDEV_EVENT_ERROR_SUBMIT, align 4
  %211 = call i32 @usbip_event_add(%struct.usbip_device* %209, i32 %210)
  br label %212

212:                                              ; preds = %196, %190
  %213 = call i32 (i8*, ...) @usbip_dbg_stub_rx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %177, %169, %116, %93, %58, %31
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_11__*) #1

declare dso_local i32 @get_pipe(%struct.stub_device*, i32, i32) #1

declare dso_local %struct.stub_priv* @stub_priv_alloc(%struct.stub_device*, %struct.usbip_header*) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @usbip_recv_xbuff(%struct.usbip_device*, %struct.TYPE_15__*) #1

declare dso_local i64 @usbip_recv_iso(%struct.usbip_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @tweak_special_requests(%struct.TYPE_15__*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @usbip_dbg_stub_rx(i8*, ...) #1

declare dso_local i32 @usbip_dump_header(%struct.usbip_header*) #1

declare dso_local i32 @usbip_dump_urb(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
