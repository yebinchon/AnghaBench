; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwahc = type { %struct.TYPE_2__, %struct.wusbhc }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wusbhc = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwahc*)* @hwahc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwahc_destroy(%struct.hwahc* %0) #0 {
  %2 = alloca %struct.hwahc*, align 8
  %3 = alloca %struct.wusbhc*, align 8
  store %struct.hwahc* %0, %struct.hwahc** %2, align 8
  %4 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %5 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %4, i32 0, i32 1
  store %struct.wusbhc* %5, %struct.wusbhc** %3, align 8
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %10 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %9, i32 0, i32 0
  %11 = call i32 @__wa_destroy(%struct.TYPE_2__* %10)
  %12 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %13 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %12, i32 0, i32 1
  %14 = call i32 @wusbhc_destroy(%struct.wusbhc* %13)
  %15 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %16 = call i32 @hwahc_security_release(%struct.hwahc* %15)
  %17 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %18 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %21 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @uwb_rc_put(i32 %22)
  %24 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %25 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_put_intf(i32 %27)
  %29 = load %struct.hwahc*, %struct.hwahc** %2, align 8
  %30 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_put_dev(i32 %32)
  %34 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %35 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wa_destroy(%struct.TYPE_2__*) #1

declare dso_local i32 @wusbhc_destroy(%struct.wusbhc*) #1

declare dso_local i32 @hwahc_security_release(%struct.hwahc*) #1

declare dso_local i32 @uwb_rc_put(i32) #1

declare dso_local i32 @usb_put_intf(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
