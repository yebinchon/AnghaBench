; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_gtk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_wusb.c_whc_set_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.whc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whc_set_gtk(%struct.wusbhc* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.whc*, align 8
  %10 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %12 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %11)
  store %struct.whc* %12, %struct.whc** %9, align 8
  %13 = load %struct.whc*, %struct.whc** %9, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.whc*, %struct.whc** %9, align 8
  %17 = load %struct.whc*, %struct.whc** %9, align 8
  %18 = getelementptr inbounds %struct.whc, %struct.whc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @whc_set_key(%struct.whc* %16, i32 %19, i32 %20, i8* %21, i64 %22, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.whc*, %struct.whc** %9, align 8
  %25 = getelementptr inbounds %struct.whc, %struct.whc* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %10, align 4
  ret i32 %27
}

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @whc_set_key(%struct.whc*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
