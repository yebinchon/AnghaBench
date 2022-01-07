; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_disable_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_disable_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AR9170_PWR_REG_WATCH_DOG_MAGIC = common dso_local global i32 0, align 4
@AR9170_TIMER_REG_WATCH_DOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_watchdog() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw, i32 0, i32 0), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @AR9170_PWR_REG_WATCH_DOG_MAGIC, align 4
  %6 = call i32 @andl(i32 %5, i32 65535)
  %7 = load i32, i32* @AR9170_PWR_REG_WATCH_DOG_MAGIC, align 4
  %8 = call i32 @orl(i32 %7, i32 -1737097216)
  %9 = load i32, i32* @AR9170_TIMER_REG_WATCH_DOG, align 4
  %10 = call i32 @set(i32 %9, i32 65535)
  br label %11

11:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @andl(i32, i32) #1

declare dso_local i32 @orl(i32, i32) #1

declare dso_local i32 @set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
