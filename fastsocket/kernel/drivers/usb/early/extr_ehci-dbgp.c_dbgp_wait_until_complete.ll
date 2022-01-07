; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DBGP_TIMEOUT = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@DBGP_DONE = common dso_local global i32 0, align 4
@DBGP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dbgp_wait_until_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_wait_until_complete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DBGP_TIMEOUT, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @readl(i32* %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @DBGP_DONE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %20

14:                                               ; preds = %5
  %15 = call i32 @udelay(i32 1)
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %5, label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @DBGP_TIMEOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %1, align 4
  br label %46

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @DBGP_DONE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 %29, i32* %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @DBGP_ERROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @DBGP_ERRCODE(i32 %38)
  %40 = sub nsw i32 0, %39
  br label %44

41:                                               ; preds = %26
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @DBGP_LEN(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %40, %37 ], [ %43, %41 ]
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %44, %23
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @DBGP_ERRCODE(i32) #1

declare dso_local i32 @DBGP_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
