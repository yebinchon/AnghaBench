; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_bulk_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@DBGP_MAX_PACKET = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@USB_PID_IN = common dso_local global i32 0, align 4
@DBGP_OUT = common dso_local global i32 0, align 4
@DBGP_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @dbgp_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_bulk_read(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DBGP_MAX_PACKET, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DBGP_EPADDR(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @USB_PID_IN, align 4
  %27 = call i32 @dbgp_pid_update(i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @readl(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dbgp_len_update(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @DBGP_OUT, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @DBGP_GO, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @writel(i32 %41, i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @writel(i32 %45, i32* %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dbgp_wait_until_done(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %18
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %66

55:                                               ; preds = %18
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dbgp_get_data(i8* %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %53, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @DBGP_EPADDR(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbgp_pid_update(i32, i32) #1

declare dso_local i32 @dbgp_len_update(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_done(i32) #1

declare dso_local i32 @dbgp_get_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
