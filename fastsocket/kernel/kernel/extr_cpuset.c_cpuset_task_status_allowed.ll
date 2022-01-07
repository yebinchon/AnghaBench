; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_task_status_allowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_task_status_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.task_struct = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Cpus_allowed:\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cpus_allowed_list:\09\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Mems_allowed:\09\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Mems_allowed_list:\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuset_task_status_allowed(%struct.seq_file* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1
  %10 = call i32 @seq_cpumask(%struct.seq_file* %7, i32* %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = call i32 @seq_cpumask_list(%struct.seq_file* %15, i32* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = call i32 @seq_nodemask(%struct.seq_file* %23, i32* %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = call i32 @seq_nodemask_list(%struct.seq_file* %31, i32* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_cpumask(%struct.seq_file*, i32*) #1

declare dso_local i32 @seq_cpumask_list(%struct.seq_file*, i32*) #1

declare dso_local i32 @seq_nodemask(%struct.seq_file*, i32*) #1

declare dso_local i32 @seq_nodemask_list(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
