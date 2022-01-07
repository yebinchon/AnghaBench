; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_debug.c_print_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_debug.c_print_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rq = type { %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_2__, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%15s %5d %9Ld.%06ld %9Ld %5d \00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%15Ld %15Ld %15Ld.%06ld %15Ld.%06ld %15Ld.%06ld\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rq*, %struct.task_struct*)* @print_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_task(%struct.seq_file* %0, %struct.rq* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.rq* %1, %struct.rq** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.rq*, %struct.rq** %5, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 0
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = icmp eq %struct.task_struct* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SPLIT_NS(i32 %29)
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25, i32 %30, i64 %37, i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @SPLIT_NS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
