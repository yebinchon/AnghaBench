; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_queue_control_on_old_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_queue_control_on_old_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { %struct.u132_udev*, %struct.u132_addr*, %struct.TYPE_2__* }
%struct.u132_udev = type { i32, i32, i64, %struct.usb_device*, i32*, i32* }
%struct.u132_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { %struct.u132*, i64, i32 }
%struct.usb_device = type { i64 }
%struct.u132_endp = type { i32, i32, i64, i32, %struct.urb**, i32 }
%struct.u132_urbq = type { %struct.urb*, i32 }

@ENDP_QUEUE_SIZE = common dso_local global i64 0, align 8
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_U132_UDEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"run out of device space\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.urb*, %struct.usb_device*, %struct.u132_endp*, i64, i64)* @queue_control_on_old_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_control_on_old_endpoint(%struct.u132* %0, %struct.urb* %1, %struct.usb_device* %2, %struct.u132_endp* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.u132*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.u132_endp*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.u132_urbq*, align 8
  %15 = alloca %struct.u132_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_udev*, align 8
  %19 = alloca %struct.u132_urbq*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.u132_udev*, align 8
  %22 = alloca %struct.u132_urbq*, align 8
  store %struct.u132* %0, %struct.u132** %8, align 8
  store %struct.urb* %1, %struct.urb** %9, align 8
  store %struct.usb_device* %2, %struct.usb_device** %10, align 8
  store %struct.u132_endp* %3, %struct.u132_endp** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %217

25:                                               ; preds = %6
  %26 = load %struct.urb*, %struct.urb** %9, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @usb_pipein(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load %struct.u132*, %struct.u132** %8, align 8
  %33 = load %struct.urb*, %struct.urb** %9, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  store %struct.u132* %32, %struct.u132** %34, align 8
  %35 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %36 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* @ENDP_QUEUE_SIZE, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load %struct.urb*, %struct.urb** %9, align 8
  %43 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %44 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %43, i32 0, i32 4
  %45 = load %struct.urb**, %struct.urb*** %44, align 8
  %46 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %47 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %48 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = and i64 %46, %51
  %53 = getelementptr inbounds %struct.urb*, %struct.urb** %45, i64 %52
  store %struct.urb* %42, %struct.urb** %53, align 8
  br label %76

54:                                               ; preds = %31
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.u132_urbq* @kmalloc(i32 16, i32 %55)
  store %struct.u132_urbq* %56, %struct.u132_urbq** %14, align 8
  %57 = load %struct.u132_urbq*, %struct.u132_urbq** %14, align 8
  %58 = icmp eq %struct.u132_urbq* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %61 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %284

66:                                               ; preds = %54
  %67 = load %struct.u132_urbq*, %struct.u132_urbq** %14, align 8
  %68 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %67, i32 0, i32 1
  %69 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %70 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.urb*, %struct.urb** %9, align 8
  %73 = load %struct.u132_urbq*, %struct.u132_urbq** %14, align 8
  %74 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %73, i32 0, i32 0
  store %struct.urb* %72, %struct.urb** %74, align 8
  br label %75

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %41
  store i32 0, i32* %7, align 4
  br label %284

77:                                               ; preds = %25
  %78 = load %struct.u132*, %struct.u132** %8, align 8
  %79 = getelementptr inbounds %struct.u132, %struct.u132* %78, i32 0, i32 1
  %80 = load %struct.u132_addr*, %struct.u132_addr** %79, align 8
  %81 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %80, i64 %83
  store %struct.u132_addr* %84, %struct.u132_addr** %15, align 8
  %85 = load i32, i32* @MAX_U132_UDEVS, align 4
  store i32 %85, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %102, %77
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %16, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %160

90:                                               ; preds = %86
  %91 = load %struct.u132*, %struct.u132** %8, align 8
  %92 = getelementptr inbounds %struct.u132, %struct.u132* %91, i32 0, i32 0
  %93 = load %struct.u132_udev*, %struct.u132_udev** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %93, i64 %96
  store %struct.u132_udev* %97, %struct.u132_udev** %18, align 8
  %98 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %99 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %98, i32 0, i32 3
  %100 = load %struct.usb_device*, %struct.usb_device** %99, align 8
  %101 = icmp ne %struct.usb_device* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %86

103:                                              ; preds = %90
  %104 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %105 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.u132*, %struct.u132** %8, align 8
  %108 = getelementptr inbounds %struct.u132, %struct.u132* %107, i32 0, i32 1
  %109 = load %struct.u132_addr*, %struct.u132_addr** %108, align 8
  %110 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %109, i64 0
  %111 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %114 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %117 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %122 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.u132*, %struct.u132** %8, align 8
  %124 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %125 = call i32 @u132_udev_init_kref(%struct.u132* %123, %struct.u132_udev* %124)
  %126 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %127 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %130 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load %struct.u132*, %struct.u132** %8, align 8
  %135 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %136 = call i32 @u132_udev_get_kref(%struct.u132* %134, %struct.u132_udev* %135)
  %137 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %138 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %141 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %146 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %147 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %146, i32 0, i32 3
  store %struct.usb_device* %145, %struct.usb_device** %147, align 8
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.u132_addr*, %struct.u132_addr** %15, align 8
  %150 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = sext i32 %148 to i64
  %152 = load %struct.urb*, %struct.urb** %9, align 8
  %153 = getelementptr inbounds %struct.urb, %struct.urb* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i64*
  %156 = getelementptr inbounds i64, i64* %155, i64 2
  store i64 %151, i64* %156, align 8
  %157 = load %struct.u132*, %struct.u132** %8, align 8
  %158 = load %struct.u132_udev*, %struct.u132_udev** %18, align 8
  %159 = call i32 @u132_udev_get_kref(%struct.u132* %157, %struct.u132_udev* %158)
  br label %160

160:                                              ; preds = %103, %86
  %161 = load i32, i32* %16, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.u132*, %struct.u132** %8, align 8
  %165 = getelementptr inbounds %struct.u132, %struct.u132* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = call i32 @dev_err(i32* %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %284

171:                                              ; preds = %160
  %172 = load %struct.u132*, %struct.u132** %8, align 8
  %173 = load %struct.urb*, %struct.urb** %9, align 8
  %174 = getelementptr inbounds %struct.urb, %struct.urb* %173, i32 0, i32 0
  store %struct.u132* %172, %struct.u132** %174, align 8
  %175 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %176 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* @ENDP_QUEUE_SIZE, align 8
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %171
  %182 = load %struct.urb*, %struct.urb** %9, align 8
  %183 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %184 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %183, i32 0, i32 4
  %185 = load %struct.urb**, %struct.urb*** %184, align 8
  %186 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %187 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %188 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = sext i32 %189 to i64
  %192 = and i64 %186, %191
  %193 = getelementptr inbounds %struct.urb*, %struct.urb** %185, i64 %192
  store %struct.urb* %182, %struct.urb** %193, align 8
  br label %216

194:                                              ; preds = %171
  %195 = load i32, i32* @GFP_ATOMIC, align 4
  %196 = call %struct.u132_urbq* @kmalloc(i32 16, i32 %195)
  store %struct.u132_urbq* %196, %struct.u132_urbq** %19, align 8
  %197 = load %struct.u132_urbq*, %struct.u132_urbq** %19, align 8
  %198 = icmp eq %struct.u132_urbq* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %201 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %7, align 4
  br label %284

206:                                              ; preds = %194
  %207 = load %struct.u132_urbq*, %struct.u132_urbq** %19, align 8
  %208 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %207, i32 0, i32 1
  %209 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %210 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %209, i32 0, i32 1
  %211 = call i32 @list_add_tail(i32* %208, i32* %210)
  %212 = load %struct.urb*, %struct.urb** %9, align 8
  %213 = load %struct.u132_urbq*, %struct.u132_urbq** %19, align 8
  %214 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %213, i32 0, i32 0
  store %struct.urb* %212, %struct.urb** %214, align 8
  br label %215

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %181
  store i32 0, i32* %7, align 4
  br label %284

217:                                              ; preds = %6
  %218 = load %struct.u132*, %struct.u132** %8, align 8
  %219 = getelementptr inbounds %struct.u132, %struct.u132* %218, i32 0, i32 1
  %220 = load %struct.u132_addr*, %struct.u132_addr** %219, align 8
  %221 = load i64, i64* %12, align 8
  %222 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %220, i64 %221
  %223 = getelementptr inbounds %struct.u132_addr, %struct.u132_addr* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %20, align 8
  %226 = load %struct.u132*, %struct.u132** %8, align 8
  %227 = getelementptr inbounds %struct.u132, %struct.u132* %226, i32 0, i32 0
  %228 = load %struct.u132_udev*, %struct.u132_udev** %227, align 8
  %229 = load i64, i64* %20, align 8
  %230 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %228, i64 %229
  store %struct.u132_udev* %230, %struct.u132_udev** %21, align 8
  %231 = load %struct.u132*, %struct.u132** %8, align 8
  %232 = load %struct.urb*, %struct.urb** %9, align 8
  %233 = getelementptr inbounds %struct.urb, %struct.urb* %232, i32 0, i32 0
  store %struct.u132* %231, %struct.u132** %233, align 8
  %234 = load %struct.u132_udev*, %struct.u132_udev** %21, align 8
  %235 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 2
  br i1 %237, label %238, label %241

238:                                              ; preds = %217
  %239 = load %struct.u132_udev*, %struct.u132_udev** %21, align 8
  %240 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %239, i32 0, i32 0
  store i32 2, i32* %240, align 8
  br label %241

241:                                              ; preds = %238, %217
  %242 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %243 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %243, align 8
  %246 = load i64, i64* @ENDP_QUEUE_SIZE, align 8
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %248, label %261

248:                                              ; preds = %241
  %249 = load %struct.urb*, %struct.urb** %9, align 8
  %250 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %251 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %250, i32 0, i32 4
  %252 = load %struct.urb**, %struct.urb*** %251, align 8
  %253 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %254 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %255 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  %258 = sext i32 %256 to i64
  %259 = and i64 %253, %258
  %260 = getelementptr inbounds %struct.urb*, %struct.urb** %252, i64 %259
  store %struct.urb* %249, %struct.urb** %260, align 8
  br label %283

261:                                              ; preds = %241
  %262 = load i32, i32* @GFP_ATOMIC, align 4
  %263 = call %struct.u132_urbq* @kmalloc(i32 16, i32 %262)
  store %struct.u132_urbq* %263, %struct.u132_urbq** %22, align 8
  %264 = load %struct.u132_urbq*, %struct.u132_urbq** %22, align 8
  %265 = icmp eq %struct.u132_urbq* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %268 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = sub nsw i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = load i32, i32* @ENOMEM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %7, align 4
  br label %284

273:                                              ; preds = %261
  %274 = load %struct.u132_urbq*, %struct.u132_urbq** %22, align 8
  %275 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %274, i32 0, i32 1
  %276 = load %struct.u132_endp*, %struct.u132_endp** %11, align 8
  %277 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %276, i32 0, i32 1
  %278 = call i32 @list_add_tail(i32* %275, i32* %277)
  %279 = load %struct.urb*, %struct.urb** %9, align 8
  %280 = load %struct.u132_urbq*, %struct.u132_urbq** %22, align 8
  %281 = getelementptr inbounds %struct.u132_urbq, %struct.u132_urbq* %280, i32 0, i32 0
  store %struct.urb* %279, %struct.urb** %281, align 8
  br label %282

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282, %248
  store i32 0, i32* %7, align 4
  br label %284

284:                                              ; preds = %283, %266, %216, %199, %163, %76, %59
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local %struct.u132_urbq* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @u132_udev_init_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i32 @u132_udev_get_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
