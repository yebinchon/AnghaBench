; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_debug.c_print_cfs_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_debug.c_print_cfs_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cfs_rq = type { i32, i32, i32, i32, %struct.task_group*, i32, i32, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.task_group = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sched_entity = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"\0Acfs_rq[%d]:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  .%-30s: %Ld.%06ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"exec_clock\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MIN_vruntime\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"min_vruntime\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"max_vruntime\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"spread\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"spread0\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"  .%-30s: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"nr_spread_over\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"  .%-30s: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"nr_running\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"load\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_cfs_rq(%struct.seq_file* %0, i32 %1, %struct.cfs_rq* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfs_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rq*, align 8
  %14 = alloca %struct.sched_entity*, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cfs_rq* %2, %struct.cfs_rq** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.rq* @cpu_rq(i32 %16)
  store %struct.rq* %17, %struct.rq** %13, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SPLIT_NS(i32 %24)
  %26 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.rq*, %struct.rq** %13, align 8
  %28 = getelementptr inbounds %struct.rq, %struct.rq* %27, i32 0, i32 0
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %32 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %37 = call %struct.TYPE_8__* @__pick_first_entity(%struct.cfs_rq* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %3
  %41 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %42 = call %struct.sched_entity* @__pick_last_entity(%struct.cfs_rq* %41)
  store %struct.sched_entity* %42, %struct.sched_entity** %14, align 8
  %43 = load %struct.sched_entity*, %struct.sched_entity** %14, align 8
  %44 = icmp ne %struct.sched_entity* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.sched_entity*, %struct.sched_entity** %14, align 8
  %47 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %51 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = call %struct.rq* @cpu_rq(i32 0)
  %54 = getelementptr inbounds %struct.rq, %struct.rq* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.rq*, %struct.rq** %13, align 8
  %58 = getelementptr inbounds %struct.rq, %struct.rq* %57, i32 0, i32 0
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SPLIT_NS(i32 %62)
  %64 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @SPLIT_NS(i32 %66)
  %68 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @SPLIT_NS(i32 %70)
  %72 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @SPLIT_NS(i32 %77)
  %79 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @SPLIT_NS(i32 %84)
  %86 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %89 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %94 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %98 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %99 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  ret void
}

declare dso_local %struct.rq* @cpu_rq(i32) #1

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @SPLIT_NS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @__pick_first_entity(%struct.cfs_rq*) #1

declare dso_local %struct.sched_entity* @__pick_last_entity(%struct.cfs_rq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
