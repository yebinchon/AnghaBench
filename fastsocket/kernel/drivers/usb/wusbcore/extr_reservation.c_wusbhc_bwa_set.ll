; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_reservation.c_wusbhc_bwa_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_reservation.c_wusbhc_bwa_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_mas_bm.0 = type { i32 }
%struct.wusbhc = type { i32 (%struct.wusbhc*, i32, %struct.uwb_mas_bm*)* }
%struct.uwb_mas_bm = type opaque

@uwb_mas_bm_zero = common dso_local global %struct.uwb_mas_bm.0 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, i32, %struct.uwb_mas_bm.0*)* @wusbhc_bwa_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_bwa_set(%struct.wusbhc* %0, i32 %1, %struct.uwb_mas_bm.0* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uwb_mas_bm.0*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uwb_mas_bm.0* %2, %struct.uwb_mas_bm.0** %6, align 8
  %7 = load %struct.uwb_mas_bm.0*, %struct.uwb_mas_bm.0** %6, align 8
  %8 = icmp eq %struct.uwb_mas_bm.0* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store %struct.uwb_mas_bm.0* @uwb_mas_bm_zero, %struct.uwb_mas_bm.0** %6, align 8
  br label %10

10:                                               ; preds = %9, %3
  %11 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 0
  %13 = load i32 (%struct.wusbhc*, i32, %struct.uwb_mas_bm*)*, i32 (%struct.wusbhc*, i32, %struct.uwb_mas_bm*)** %12, align 8
  %14 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.uwb_mas_bm.0*, %struct.uwb_mas_bm.0** %6, align 8
  %17 = bitcast %struct.uwb_mas_bm.0* %16 to %struct.uwb_mas_bm*
  %18 = call i32 %13(%struct.wusbhc* %14, i32 %15, %struct.uwb_mas_bm* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
