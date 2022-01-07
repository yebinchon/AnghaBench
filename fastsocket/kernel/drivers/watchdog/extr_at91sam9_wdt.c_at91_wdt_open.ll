; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@at91wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @at91_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i64 @test_and_set_bit(i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 2))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @heartbeat, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 1), align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @WDT_TIMEOUT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 0), i64 %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = call i32 @nonseekable_open(%struct.inode* %22, %struct.file* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %11, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
