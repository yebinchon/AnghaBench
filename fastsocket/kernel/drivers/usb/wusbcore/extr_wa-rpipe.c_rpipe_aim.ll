; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_aim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_aim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_rpipe = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i32, i32, i64, i8*, i8*, i32 }
%struct.wahc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.usb_device*, i32 }
%struct.usb_device = type { i32, i32, i32, i64 }
%struct.usb_wireless_ep_comp_descriptor = type { i64 }

@ENOMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ep 0x%02x: can't find companion descriptor\0A\00", align 1
@UWB_PHY_RATE_53 = common dso_local global i32 0, align 4
@UWB_PHY_RATE_200 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"addr %u (0x%02x) rpipe #%u ep# %u speed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot aim rpipe: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_rpipe*, %struct.wahc*, %struct.usb_host_endpoint*, %struct.urb*, i32)* @rpipe_aim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpipe_aim(%struct.wa_rpipe* %0, %struct.wahc* %1, %struct.usb_host_endpoint* %2, %struct.urb* %3, i32 %4) #0 {
  %6 = alloca %struct.wa_rpipe*, align 8
  %7 = alloca %struct.wahc*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca %struct.usb_wireless_ep_comp_descriptor*, align 8
  %15 = alloca i32, align 4
  store %struct.wa_rpipe* %0, %struct.wa_rpipe** %6, align 8
  store %struct.wahc* %1, %struct.wahc** %7, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %8, align 8
  store %struct.urb* %3, %struct.urb** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @ENOMSG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.wahc*, %struct.wahc** %7, align 8
  %19 = getelementptr inbounds %struct.wahc, %struct.wahc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.urb*, %struct.urb** %9, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %13, align 8
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %27 = call %struct.usb_wireless_ep_comp_descriptor* @rpipe_epc_find(%struct.device* %25, %struct.usb_host_endpoint* %26)
  store %struct.usb_wireless_ep_comp_descriptor* %27, %struct.usb_wireless_ep_comp_descriptor** %14, align 8
  %28 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %14, align 8
  %29 = icmp eq %struct.usb_wireless_ep_comp_descriptor* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %12, align 8
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %218

37:                                               ; preds = %5
  %38 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 128, i32 0
  store i32 %51, i32* %15, align 4
  %52 = load %struct.wahc*, %struct.wahc** %7, align 8
  %53 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %54 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = call i32 @__rpipe_reset(%struct.wahc* %52, i32 %57)
  %59 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %60 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %59, i32 0, i32 1
  %61 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %62 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = call i32 @atomic_set(i32* %60, i32 %65)
  %67 = call i8* @cpu_to_le16(i32 16)
  %68 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %69 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 15
  store i8* %67, i8** %70, align 8
  %71 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %72 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %77 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 14
  store i8* %75, i8** %78, align 8
  %79 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %80 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 13
  store i64 0, i64* %81, align 8
  %82 = load %struct.urb*, %struct.urb** %9, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load %struct.usb_device*, %struct.usb_device** %83, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @wusb_port_no_to_idx(i32 %86)
  %88 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %89 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 12
  store i32 %87, i32* %90, align 4
  %91 = load %struct.urb*, %struct.urb** %9, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @usb_pipeendpoint(i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %48
  %97 = load i32, i32* @UWB_PHY_RATE_53, align 4
  br label %100

98:                                               ; preds = %48
  %99 = load i32, i32* @UWB_PHY_RATE_200, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %103 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 11
  store i32 %101, i32* %104, align 8
  %105 = load %struct.device*, %struct.device** %12, align 8
  %106 = load %struct.urb*, %struct.urb** %9, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 0
  %108 = load %struct.usb_device*, %struct.usb_device** %107, align 8
  %109 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.urb*, %struct.urb** %9, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 0
  %113 = load %struct.usb_device*, %struct.usb_device** %112, align 8
  %114 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %119 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = load %struct.urb*, %struct.urb** %9, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @usb_pipeendpoint(i32 %125)
  %127 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %128 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %117, i32 %122, i64 %126, i32 %130)
  %132 = load %struct.urb*, %struct.urb** %9, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 0
  %134 = load %struct.usb_device*, %struct.usb_device** %133, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 128
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %100
  %142 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %143 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %156

145:                                              ; preds = %100
  %146 = load %struct.urb*, %struct.urb** %9, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 0
  %148 = load %struct.usb_device*, %struct.usb_device** %147, align 8
  %149 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %154 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %145, %141
  %157 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %158 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %162 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %165 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 10
  store i64 0, i64* %166, align 8
  %167 = call i32 @cpu_to_le32(i32 1)
  %168 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %169 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 9
  store i32 %167, i32* %170, align 8
  %171 = load %struct.usb_wireless_ep_comp_descriptor*, %struct.usb_wireless_ep_comp_descriptor** %14, align 8
  %172 = getelementptr inbounds %struct.usb_wireless_ep_comp_descriptor, %struct.usb_wireless_ep_comp_descriptor* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %173, 1
  %175 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %176 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 8
  store i64 %174, i64* %177, align 8
  %178 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %179 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %183 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 7
  store i32 %181, i32* %184, align 8
  %185 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %186 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  store i64 0, i64* %187, align 8
  %188 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %189 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 3
  %193 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %194 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 8
  %196 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %197 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  store i32 15, i32* %198, align 4
  %199 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %200 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  store i64 0, i64* %201, align 8
  %202 = load %struct.wahc*, %struct.wahc** %7, align 8
  %203 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %204 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %203, i32 0, i32 0
  %205 = load %struct.wa_rpipe*, %struct.wa_rpipe** %6, align 8
  %206 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @le16_to_cpu(i32 %208)
  %210 = call i32 @__rpipe_set_descr(%struct.wahc* %202, %struct.TYPE_6__* %204, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %156
  %214 = load %struct.device*, %struct.device** %12, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @dev_err(%struct.device* %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %215)
  br label %218

217:                                              ; preds = %156
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %217, %213, %30
  %219 = load i32, i32* %11, align 4
  ret i32 %219
}

declare dso_local %struct.usb_wireless_ep_comp_descriptor* @rpipe_epc_find(%struct.device*, %struct.usb_host_endpoint*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__rpipe_reset(%struct.wahc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wusb_port_no_to_idx(i32) #1

declare dso_local i64 @usb_pipeendpoint(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__rpipe_set_descr(%struct.wahc*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
