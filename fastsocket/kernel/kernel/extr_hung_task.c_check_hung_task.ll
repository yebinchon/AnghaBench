; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hung_task.c_check_hung_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hung_task.c_check_hung_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PF_FROZEN = common dso_local global i32 0, align 4
@sysctl_hung_task_warnings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"INFO: task %s:%d blocked for more than %ld seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"      %s %s %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"\22echo 0 > /proc/sys/kernel/hung_task_timeout_secs\22 disables this message.\0A\00", align 1
@sysctl_hung_task_panic = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"hung_task: blocked tasks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64)* @check_hung_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_hung_task(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PF_FROZEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i1 [ true, %2 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %77

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %77

39:                                               ; preds = %29
  %40 = load i32, i32* @sysctl_hung_task_warnings, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %77

43:                                               ; preds = %39
  %44 = load i32, i32* @sysctl_hung_task_warnings, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @sysctl_hung_task_warnings, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i64 %52)
  %54 = call i32 (...) @print_tainted()
  %55 = call %struct.TYPE_2__* (...) @init_utsname()
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_2__* (...) @init_utsname()
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcspn(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %62 = trunc i64 %61 to i32
  %63 = call %struct.TYPE_2__* (...) @init_utsname()
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %62, i32 %65)
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = call i32 @sched_show_task(%struct.task_struct* %68)
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = call i32 @__debug_show_held_locks(%struct.task_struct* %70)
  %72 = call i32 (...) @touch_nmi_watchdog()
  %73 = load i64, i64* @sysctl_hung_task_panic, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %43
  %76 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %28, %35, %42, %75, %43
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i64 @strcspn(i32, i8*) #1

declare dso_local i32 @sched_show_task(%struct.task_struct*) #1

declare dso_local i32 @__debug_show_held_locks(%struct.task_struct*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
