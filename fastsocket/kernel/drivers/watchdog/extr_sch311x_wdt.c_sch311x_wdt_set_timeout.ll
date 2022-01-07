; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@sch311x_wdt_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WDT_TIME_OUT = common dso_local global i64 0, align 8
@WDT_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sch311x_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch311x_wdt_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8 -128, i8* %3, align 1
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 255
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  store i8 0, i8* %3, align 1
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 60
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0), align 8
  %13 = load i64, i64* @WDT_TIME_OUT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 %11, i64 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch311x_wdt_data, i32 0, i32 0), align 8
  %18 = load i64, i64* @WDT_VAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %16, i64 %19)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
