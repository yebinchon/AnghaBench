; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpc8xxx_wdt.c_mpc8xxx_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpc8xxx_wdt.c_mpc8xxx_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@SWCRR_SWEN = common dso_local global i32 0, align 4
@wdt_is_open = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@prescale = common dso_local global i64 0, align 8
@SWCRR_SWPR = common dso_local global i32 0, align 4
@reset = common dso_local global i64 0, align 8
@SWCRR_SWRI = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@wd_base = common dso_local global %struct.TYPE_2__* null, align 8
@wdt_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mpc8xxx_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xxx_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @SWCRR_SWEN, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i64 @test_and_set_bit(i32 0, i32* @wdt_is_open)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load i64, i64* @nowayout, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = call i32 @__module_get(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @prescale, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @SWCRR_SWPR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i64, i64* @reset, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @SWCRR_SWRI, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @timeout, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_base, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @out_be32(i32* %39, i32 %40)
  %42 = call i32 @del_timer_sync(i32* @wdt_timer)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = call i32 @nonseekable_open(%struct.inode* %43, %struct.file* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %33, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
