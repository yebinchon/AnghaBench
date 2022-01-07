; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wdt285.c_watchdog_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wdt285.c_watchdog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@CSR_SA110_CNTL = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@timer_alive = common dso_local global i32 0, align 4
@soft_margin = common dso_local global i32 0, align 4
@mem_fclk_21285 = common dso_local global i32 0, align 4
@reload = common dso_local global i32 0, align 4
@CSR_TIMER4_CLR = common dso_local global i64* null, align 8
@TIMER_CNTL_ENABLE = common dso_local global i32 0, align 4
@TIMER_CNTL_AUTORELOAD = common dso_local global i32 0, align 4
@TIMER_CNTL_DIV256 = common dso_local global i32 0, align 4
@CSR_TIMER4_CNTL = common dso_local global i32* null, align 8
@IRQ_TIMER4 = common dso_local global i32 0, align 4
@watchdog_fire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @watchdog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32*, i32** @CSR_SA110_CNTL, align 8
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 8192
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = call i64 @test_and_set_bit(i32 1, i32* @timer_alive)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i32, i32* @soft_margin, align 4
  %22 = load i32, i32* @mem_fclk_21285, align 4
  %23 = sdiv i32 %22, 256
  %24 = mul nsw i32 %21, %23
  store i32 %24, i32* @reload, align 4
  %25 = load i64*, i64** @CSR_TIMER4_CLR, align 8
  store i64 0, i64* %25, align 8
  %26 = call i32 (...) @watchdog_ping()
  %27 = load i32, i32* @TIMER_CNTL_ENABLE, align 4
  %28 = load i32, i32* @TIMER_CNTL_AUTORELOAD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TIMER_CNTL_DIV256, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** @CSR_TIMER4_CNTL, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** @CSR_SA110_CNTL, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 8192
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = call i32 @nonseekable_open(%struct.inode* %36, %struct.file* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %20, %17, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_ping(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
