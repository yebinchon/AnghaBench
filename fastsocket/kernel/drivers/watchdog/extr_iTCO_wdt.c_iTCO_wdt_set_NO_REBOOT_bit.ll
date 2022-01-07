; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_NO_REBOOT_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_NO_REBOOT_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@iTCO_wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iTCO_wdt_set_NO_REBOOT_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iTCO_wdt_set_NO_REBOOT_bit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 2), align 4
  %6 = call i32 @readl(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, 32
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 2), align 4
  %11 = call i32 @writel(i32 %9, i32 %10)
  br label %24

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1), align 4
  %17 = call i32 @pci_read_config_dword(i32 %16, i32 212, i32* %1)
  %18 = load i32, i32* %1, align 4
  %19 = or i32 %18, 2
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1), align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @pci_write_config_dword(i32 %20, i32 212, i32 %21)
  br label %23

23:                                               ; preds = %15, %12
  br label %24

24:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
