; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_unlock_inbalance_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_unlock_inbalance_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.lockdep_map = type { i32 }

@debug_locks_silent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0A=====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[ BUG: bad unlock balance detected! ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"-------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s/%d is trying to release lock (\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c") at:\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"but there are no more locks to release!\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0Aother info that might help us debug this:\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.lockdep_map*, i64)* @print_unlock_inbalance_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_unlock_inbalance_bug(%struct.task_struct* %0, %struct.lockdep_map* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = call i32 (...) @debug_locks_off()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

11:                                               ; preds = %3
  %12 = load i64, i64* @debug_locks_silent, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %36

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = call i32 @task_pid_nr(%struct.task_struct* %22)
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %26 = call i32 @print_lockdep_cache(%struct.lockdep_map* %25)
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @print_ip_sym(i64 %28)
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = call i32 @lockdep_print_held_locks(%struct.task_struct* %32)
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %35 = call i32 (...) @dump_stack()
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %15, %14, %10
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @print_lockdep_cache(%struct.lockdep_map*) #1

declare dso_local i32 @print_ip_sym(i64) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.task_struct*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
