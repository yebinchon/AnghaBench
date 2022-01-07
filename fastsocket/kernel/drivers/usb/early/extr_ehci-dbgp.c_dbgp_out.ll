; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@USB_PID_OUT = common dso_local global i32 0, align 4
@DBGP_OUT = common dso_local global i32 0, align 4
@DBGP_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @dbgp_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_out(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @readl(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_PID_OUT, align 4
  %14 = call i32 @dbgp_pid_update(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = call i32 @readl(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dbgp_len_update(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @DBGP_OUT, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @DBGP_GO, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dbgp_set_data(i8* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @writel(i32 %30, i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @writel(i32 %34, i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dbgp_wait_until_done(i32 %38)
  ret i32 %39
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbgp_pid_update(i32, i32) #1

declare dso_local i32 @dbgp_len_update(i32, i32) #1

declare dso_local i32 @dbgp_set_data(i8*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
