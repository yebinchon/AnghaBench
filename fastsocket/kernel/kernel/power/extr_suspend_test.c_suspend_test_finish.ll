; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_suspend_test.c_suspend_test_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_suspend_test.c_suspend_test_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@suspend_test_start_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PM: %s took %d.%03d seconds\0A\00", align 1
@TEST_SUSPEND_SECONDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Component: %s, time: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @suspend_test_finish(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @suspend_test_start_time, align 8
  %7 = sub nsw i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @abs(i64 %8)
  %10 = call i32 @jiffies_to_msecs(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 1000
  %14 = load i32, i32* %4, align 4
  %15 = urem i32 %14, 1000
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TEST_SUSPEND_SECONDS, align 4
  %19 = mul nsw i32 %18, 1000
  %20 = icmp ugt i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WARN(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
