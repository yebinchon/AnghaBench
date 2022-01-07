; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_held_locks_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_held_locks_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@debug_locks_silent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0A=====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[ BUG: lock held at task exit time! ]\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"-------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s/%d is exiting with locks still held!\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0Astack backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @print_held_locks_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_held_locks_bug(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = call i32 (...) @debug_locks_off()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load i64, i64* @debug_locks_silent, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %24

10:                                               ; preds = %6
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @task_pid_nr(%struct.task_struct* %17)
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = call i32 @lockdep_print_held_locks(%struct.task_struct* %20)
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 (...) @dump_stack()
  br label %24

24:                                               ; preds = %10, %9, %5
  ret void
}

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @lockdep_print_held_locks(%struct.task_struct*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
