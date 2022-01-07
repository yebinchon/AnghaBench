; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_timer_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_timer_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@EHCI_IAA_JIFFIES = common dso_local global i64 0, align 8
@EHCI_IO_JIFFIES = common dso_local global i64 0, align 8
@EHCI_ASYNC_JIFFIES = common dso_local global i64 0, align 8
@EHCI_SHRINK_JIFFIES = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, i32)* @timer_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_action(%struct.oxu_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %7, i32 0, i32 1
  %9 = call i32 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %20 [
    i32 129, label %13
    i32 128, label %15
    i32 131, label %17
    i32 130, label %19
  ]

13:                                               ; preds = %11
  %14 = load i64, i64* @EHCI_IAA_JIFFIES, align 8
  store i64 %14, i64* %5, align 8
  br label %22

15:                                               ; preds = %11
  %16 = load i64, i64* @EHCI_IO_JIFFIES, align 8
  store i64 %16, i64* %5, align 8
  br label %22

17:                                               ; preds = %11
  %18 = load i64, i64* @EHCI_ASYNC_JIFFIES, align 8
  store i64 %18, i64* %5, align 8
  br label %22

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %11, %19
  %21 = load i64, i64* @EHCI_SHRINK_JIFFIES, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %17, %15, %13
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 129
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %29, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %36, i32 0, i32 0
  %38 = call i64 @timer_pending(%struct.TYPE_3__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %46

41:                                               ; preds = %35, %28, %22
  %42 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @mod_timer(%struct.TYPE_3__* %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %41, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
