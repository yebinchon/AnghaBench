; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sa1100_wdt.c_sa1100dog_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sa1100_wdt.c_sa1100dog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@sa1100wdt_users = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OSCR = common dso_local global i64 0, align 8
@pre_margin = common dso_local global i64 0, align 8
@OSMR3 = common dso_local global i64 0, align 8
@OSSR_M3 = common dso_local global i32 0, align 4
@OSSR = common dso_local global i32 0, align 4
@OWER_WME = common dso_local global i32 0, align 4
@OWER = common dso_local global i32 0, align 4
@OIER_E3 = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sa1100dog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100dog_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i64 @test_and_set_bit(i32 1, i32* @sa1100wdt_users)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i64, i64* @OSCR, align 8
  %13 = load i64, i64* @pre_margin, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* @OSMR3, align 8
  %15 = load i32, i32* @OSSR_M3, align 4
  store i32 %15, i32* @OSSR, align 4
  %16 = load i32, i32* @OWER_WME, align 4
  store i32 %16, i32* @OWER, align 4
  %17 = load i32, i32* @OIER_E3, align 4
  %18 = load i32, i32* @OIER, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @OIER, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @nonseekable_open(%struct.inode* %20, %struct.file* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
