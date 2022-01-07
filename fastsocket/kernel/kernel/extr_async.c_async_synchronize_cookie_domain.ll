; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_synchronize_cookie_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_synchronize_cookie_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_domain = type { i32 }

@initcall_debug = common dso_local global i64 0, align 8
@system_state = common dso_local global i64 0, align 8
@SYSTEM_BOOTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"async_waiting @ %i\0A\00", align 1
@current = common dso_local global i32 0, align 4
@async_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"async_continuing @ %i after %lli usec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_synchronize_cookie_domain(i64 %0, %struct.async_domain* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.async_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.async_domain* %1, %struct.async_domain** %4, align 8
  %8 = load %struct.async_domain*, %struct.async_domain** %4, align 8
  %9 = icmp ne %struct.async_domain* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i64, i64* @initcall_debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i64, i64* @system_state, align 8
  %16 = load i64, i64* @SYSTEM_BOOTING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @task_pid_nr(i32 %19)
  %21 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @ktime_get()
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %14, %11
  %24 = load i32, i32* @async_done, align 4
  %25 = load %struct.async_domain*, %struct.async_domain** %4, align 8
  %26 = call i64 @lowest_in_progress(%struct.async_domain* %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp sge i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @wait_event(i32 %24, i32 %29)
  %31 = load i64, i64* @initcall_debug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load i64, i64* @system_state, align 8
  %35 = load i64, i64* @SYSTEM_BOOTING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = call i32 (...) @ktime_get()
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ktime_sub(i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @task_pid_nr(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ktime_to_ns(i32 %44)
  %46 = ashr i64 %45, 10
  %47 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %10, %37, %33, %23
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @lowest_in_progress(%struct.async_domain*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
