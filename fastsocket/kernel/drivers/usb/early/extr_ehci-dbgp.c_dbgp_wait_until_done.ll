; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@DBGP_GO = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@DBGP_TIMEOUT = common dso_local global i32 0, align 4
@dbgp_not_safe = common dso_local global i32 0, align 4
@USB_PID_NAK = common dso_local global i64 0, align 8
@USB_PID_NYET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dbgp_wait_until_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_wait_until_done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 3, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DBGP_GO, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @writel(i32 %11, i32* %13)
  %15 = call i32 (...) @dbgp_wait_until_complete()
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @readl(i32* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @DBGP_PID_GET(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DBGP_TIMEOUT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @dbgp_not_safe, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 1, i32* @dbgp_not_safe, align 4
  br label %32

32:                                               ; preds = %31, %28, %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @USB_PID_NAK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @USB_PID_NYET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34
  %43 = call i32 (...) @dbgp_breath()
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @USB_PID_NAK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %8

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %32
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_complete(...) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @DBGP_PID_GET(i64) #1

declare dso_local i32 @dbgp_breath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
