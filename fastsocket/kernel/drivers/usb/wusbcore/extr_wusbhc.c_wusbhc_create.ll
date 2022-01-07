; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32 }

@WUSB_TRUST_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_create(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @WUSB_TRUST_TIMEOUT_MS, align 4
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 0
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %12 = call i32 @wusbhc_mmcie_create(%struct.wusbhc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %18 = call i32 @wusbhc_devconnect_create(%struct.wusbhc* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %41

22:                                               ; preds = %16
  %23 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %24 = call i32 @wusbhc_rh_create(%struct.wusbhc* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %38

28:                                               ; preds = %22
  %29 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %30 = call i32 @wusbhc_sec_create(%struct.wusbhc* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %46

35:                                               ; preds = %33
  %36 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %37 = call i32 @wusbhc_rh_destroy(%struct.wusbhc* %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %40 = call i32 @wusbhc_devconnect_destroy(%struct.wusbhc* %39)
  br label %41

41:                                               ; preds = %38, %21
  %42 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %43 = call i32 @wusbhc_mmcie_destroy(%struct.wusbhc* %42)
  br label %44

44:                                               ; preds = %41, %15
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %34
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @wusbhc_mmcie_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rh_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_create(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rh_destroy(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_destroy(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_mmcie_destroy(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
