; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.twl4030_wdt* }
%struct.twl4030_wdt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@nowayout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unexpected close, watchdog still running!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@TWL4030_WDT_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @twl4030_wdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_wdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.twl4030_wdt*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %8, align 8
  store %struct.twl4030_wdt* %9, %struct.twl4030_wdt** %6, align 8
  %10 = load i64, i64* @nowayout, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %14 = getelementptr inbounds %struct.twl4030_wdt, %struct.twl4030_wdt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_alert(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %19 = call i32 @twl4030_wdt_enable(%struct.twl4030_wdt* %18)
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %22 = call i64 @twl4030_wdt_disable(%struct.twl4030_wdt* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %20
  %28 = load i32, i32* @TWL4030_WDT_STATE_ACTIVE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %31 = getelementptr inbounds %struct.twl4030_wdt, %struct.twl4030_wdt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %12
  %35 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %36 = getelementptr inbounds %struct.twl4030_wdt, %struct.twl4030_wdt* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 0, i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_alert(i32, i8*) #1

declare dso_local i32 @twl4030_wdt_enable(%struct.twl4030_wdt*) #1

declare dso_local i64 @twl4030_wdt_disable(%struct.twl4030_wdt*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
