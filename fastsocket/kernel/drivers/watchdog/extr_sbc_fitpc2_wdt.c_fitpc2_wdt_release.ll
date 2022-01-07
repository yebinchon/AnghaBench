; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sbc_fitpc2_wdt.c_fitpc2_wdt_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sbc_fitpc2_wdt.c_fitpc2_wdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@WDT_OK_TO_CLOSE = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Device disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Device closed unexpectedly - timer will not stop\0A\00", align 1
@WDT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fitpc2_wdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fitpc2_wdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %6 = call i64 @test_bit(i32 %5, i32* @wdt_status)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 (...) @wdt_disable()
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %14

11:                                               ; preds = %2
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @wdt_enable()
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @WDT_IN_USE, align 4
  %16 = call i32 @clear_bit(i32 %15, i32* @wdt_status)
  %17 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %18 = call i32 @clear_bit(i32 %17, i32* @wdt_status)
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wdt_disable(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @wdt_enable(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
