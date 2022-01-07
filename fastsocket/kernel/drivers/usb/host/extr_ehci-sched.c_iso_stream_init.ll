; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_iso_stream_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_iso_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_stream = type { i32, i32, i64, i32, i64, i32, i32, i32, %struct.usb_device*, i8*, i32, i8*, i8*, i8* }
%struct.usb_device = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@iso_stream_init.smask_out = internal constant [6 x i32] [i32 1, i32 3, i32 7, i32 15, i32 31, i32 63], align 16
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_iso_stream*, %struct.usb_device*, i32, i32)* @iso_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iso_stream_init(%struct.ehci_hcd* %0, %struct.ehci_iso_stream* %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.ehci_iso_stream*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %6, align 8
  store %struct.ehci_iso_stream* %1, %struct.ehci_iso_stream** %7, align 8
  store %struct.usb_device* %2, %struct.usb_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @usb_pipeendpoint(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @usb_pipein(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @USB_DIR_IN, align 4
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %14, align 4
  %31 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @usb_maxpacket(%struct.usb_device* %31, i32 %32, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 2048, i32* %11, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_SPEED_HIGH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @hb_mult(i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %52 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @max_packet(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 8
  %64 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %63, %66
  %68 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %61, i32 %67)
  %69 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %70 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %69, i32 0, i32 13
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %71, i32 %72)
  %74 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %75 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %74, i32 0, i32 12
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %76, i32 %77)
  %79 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %80 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i8* @HS_USECS_ISO(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %85 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %87 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 8
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %15, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %15, align 8
  %94 = sdiv i64 %93, %92
  store i64 %94, i64* %15, align 8
  br label %224

95:                                               ; preds = %42
  %96 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %97 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 24
  store i32 %99, i32* %17, align 4
  %100 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %101 = call i32 @ehci_is_TDI(%struct.ehci_hcd* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 3
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %110 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = icmp ne %struct.TYPE_6__* %108, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %103, %95
  %116 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 16
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %115, %103
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 %127, 8
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %17, align 4
  %131 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i8* @HS_USECS_ISO(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %140 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %142 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %126
  %146 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %147 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %146, i32 0, i32 3
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  br label %152

151:                                              ; preds = %126
  br label %152

152:                                              ; preds = %151, %145
  %153 = phi i32 [ %150, %145 ], [ 0, %151 ]
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %157 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i64 @usb_calc_bus_time(i64 %158, i32 %159, i32 1, i32 %160)
  %162 = add nsw i64 %155, %161
  %163 = call i32 @NS_TO_US(i64 %162)
  %164 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %165 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %164, i32 0, i32 10
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %13, align 4
  %167 = add i32 %166, 187
  %168 = udiv i32 %167, 188
  %169 = call i32 @max(i32 1, i32 %168)
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %152
  %173 = load i32, i32* %17, align 4
  %174 = or i32 %173, -2147483648
  store i32 %174, i32* %17, align 4
  %175 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %176 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %180 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = call i8* @HS_USECS_ISO(i32 1)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %184 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %186 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %185, i32 0, i32 3
  store i32 1, i32* %186, align 8
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 2
  %189 = shl i32 1, %188
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = shl i32 %191, 10
  %193 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %194 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %205

197:                                              ; preds = %152
  %198 = load i32, i32* %19, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [6 x i32], [6 x i32]* @iso_stream_init.smask_out, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %204 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %197, %172
  %206 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %207 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %211 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  store i64 %213, i64* %15, align 8
  %214 = load i32, i32* %10, align 4
  %215 = shl i32 %214, 3
  %216 = zext i32 %215 to i64
  %217 = load i64, i64* %15, align 8
  %218 = sdiv i64 %217, %216
  store i64 %218, i64* %15, align 8
  %219 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %220 = load i32, i32* %17, align 4
  %221 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %219, i32 %220)
  %222 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %223 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %222, i32 0, i32 9
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %205, %48
  %225 = load i64, i64* %15, align 8
  %226 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %227 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %226, i32 0, i32 4
  store i64 %225, i64* %227, align 8
  %228 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %229 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %230 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %229, i32 0, i32 8
  store %struct.usb_device* %228, %struct.usb_device** %230, align 8
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %12, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %235 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %234, i32 0, i32 5
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %238 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %241 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 8
  ret void
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @hb_mult(i32) #1

declare dso_local i32 @max_packet(i32) #1

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i8* @HS_USECS_ISO(i32) #1

declare dso_local i32 @ehci_is_TDI(%struct.ehci_hcd*) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @NS_TO_US(i64) #1

declare dso_local i64 @usb_calc_bus_time(i64, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
