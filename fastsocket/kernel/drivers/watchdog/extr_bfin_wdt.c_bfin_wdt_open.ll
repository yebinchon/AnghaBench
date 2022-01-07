; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_bfin_wdt.c_bfin_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_bfin_wdt.c_bfin_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@open_check = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bfin_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i32 (...) @stampit()
  %7 = call i64 @test_and_set_bit(i32 0, i32* @open_check)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i64, i64* @nowayout, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @__module_get(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = call i32 (...) @bfin_wdt_keepalive()
  %20 = call i32 (...) @bfin_wdt_start()
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i32 @nonseekable_open(%struct.inode* %21, %struct.file* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @stampit(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @bfin_wdt_keepalive(...) #1

declare dso_local i32 @bfin_wdt_start(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
