; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.wm8350 = type { i32 }

@wm8350_wdt_expect_close = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Watchdog device closed uncleanly\0A\00", align 1
@wm8350_wdt_users = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wm8350_wdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_wdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.wm8350*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = call %struct.wm8350* (...) @get_wm8350()
  store %struct.wm8350* %6, %struct.wm8350** %5, align 8
  %7 = load i64, i64* @wm8350_wdt_expect_close, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %11 = call i32 @wm8350_wdt_stop(%struct.wm8350* %10)
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %14 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %18 = call i32 @wm8350_wdt_kick(%struct.wm8350* %17)
  br label %19

19:                                               ; preds = %12, %9
  %20 = call i32 @clear_bit(i32 0, i32* @wm8350_wdt_users)
  ret i32 0
}

declare dso_local %struct.wm8350* @get_wm8350(...) #1

declare dso_local i32 @wm8350_wdt_stop(%struct.wm8350*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @wm8350_wdt_kick(%struct.wm8350*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
