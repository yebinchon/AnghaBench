; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.twl4030_wdt = type { i32 }

@twl4030_wdt_dev = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TWL4030_WDT_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @twl4030_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.twl4030_wdt*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @twl4030_wdt_dev, align 4
  %8 = call %struct.twl4030_wdt* @platform_get_drvdata(i32 %7)
  store %struct.twl4030_wdt* %8, %struct.twl4030_wdt** %6, align 8
  %9 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %10 = getelementptr inbounds %struct.twl4030_wdt, %struct.twl4030_wdt* %9, i32 0, i32 0
  %11 = call i64 @test_and_set_bit(i32 0, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @TWL4030_WDT_STATE_ACTIVE, align 4
  %18 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %19 = getelementptr inbounds %struct.twl4030_wdt, %struct.twl4030_wdt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %23 = bitcast %struct.twl4030_wdt* %22 to i8*
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.twl4030_wdt*, %struct.twl4030_wdt** %6, align 8
  %27 = call i32 @twl4030_wdt_enable(%struct.twl4030_wdt* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = call i32 @nonseekable_open(%struct.inode* %28, %struct.file* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.twl4030_wdt* @platform_get_drvdata(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @twl4030_wdt_enable(%struct.twl4030_wdt*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
