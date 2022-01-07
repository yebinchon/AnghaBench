; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_finish_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_uhci_finish_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32 }

@SUSPEND_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, i32, i64)* @uhci_finish_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_finish_suspend(%struct.uhci_hcd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @inw(i64 %9)
  %11 = load i32, i32* @SUSPEND_BITS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load i32, i32* @SUSPEND_BITS, align 4
  %16 = call i32 @CLR_RH_PORTSTAT(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %19 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %14
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @inw(i64 %32)
  %34 = load i32, i32* @SUSPEND_BITS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @udelay(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %28

43:                                               ; preds = %37, %28
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.uhci_hcd*, %struct.uhci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @CLR_RH_PORTSTAT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
