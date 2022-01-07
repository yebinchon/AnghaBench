; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_it87_wdt.c_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_it87_wdt.c_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@exclusive = common dso_local global i64 0, align 8
@WDTS_DEV_OPEN = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WDTS_TIMER_RUN = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@WDTS_LOCKED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load i64, i64* @exclusive, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @WDTS_DEV_OPEN, align 4
  %10 = call i64 @test_and_set_bit(i32 %9, i32* @wdt_status)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %8, %2
  %16 = load i32, i32* @WDTS_TIMER_RUN, align 4
  %17 = call i64 @test_and_set_bit(i32 %16, i32* @wdt_status)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @nowayout, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @WDTS_LOCKED, align 4
  %24 = call i64 @test_and_set_bit(i32 %23, i32* @wdt_status)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = call i32 @__module_get(i32 %27)
  br label %29

29:                                               ; preds = %26, %22, %19
  %30 = call i32 (...) @wdt_start()
  br label %31

31:                                               ; preds = %29, %15
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = call i32 @nonseekable_open(%struct.inode* %32, %struct.file* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @wdt_start(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
