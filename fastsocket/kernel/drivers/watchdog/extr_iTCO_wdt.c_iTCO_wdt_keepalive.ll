; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_keepalive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@iTCO_wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@heartbeat = common dso_local global i32 0, align 4
@TCO_RLD = common dso_local global i32 0, align 4
@TCO1_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iTCO_wdt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_keepalive() #0 {
  %1 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 2), align 4
  %3 = load i32, i32* @heartbeat, align 4
  %4 = call i32 @iTCO_vendor_pre_keepalive(i32 %2, i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @TCO_RLD, align 4
  %9 = call i32 @outw(i32 1, i32 %8)
  br label %19

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @TCO1_STS, align 4
  %15 = call i32 @outw(i32 8, i32 %14)
  %16 = load i32, i32* @TCO_RLD, align 4
  %17 = call i32 @outb(i32 1, i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  br label %19

19:                                               ; preds = %18, %7
  %20 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iTCO_vendor_pre_keepalive(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
