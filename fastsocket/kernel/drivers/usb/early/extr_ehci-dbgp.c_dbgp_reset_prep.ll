; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_reset_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_reset_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@dbgp_not_safe = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_3__* null, align 8
@early_dbgp_console = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CON_BOOT = common dso_local global i32 0, align 4
@DBGP_ENABLED = common dso_local global i32 0, align 4
@DBGP_CLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgp_reset_prep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @dbgp_not_safe, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_debug, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @early_dbgp_console, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @early_dbgp_console, i32 0, i32 1), align 4
  %11 = load i32, i32* @CON_BOOT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 1, i32* %1, align 4
  br label %33

15:                                               ; preds = %9, %6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_debug, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @readl(i32* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @DBGP_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @DBGP_CLAIM, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_debug, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @writel(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %23, %15
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %14, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
