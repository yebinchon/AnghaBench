; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_test_cpu_buff_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_test_cpu_buff_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i64, i32, i32, %struct.TYPE_3__*, %struct.trace_seq }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.trace_seq = type { i32 }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_ANNOTATE = common dso_local global i32 0, align 4
@TRACE_FILE_ANNOTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"##### CPU %u buffer started ####\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*)* @test_cpu_buff_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cpu_buff_start(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %4 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %4, i32 0, i32 5
  store %struct.trace_seq* %5, %struct.trace_seq** %3, align 8
  %6 = load i32, i32* @trace_flags, align 4
  %7 = load i32, i32* @TRACE_ITER_ANNOTATE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TRACE_FILE_ANNOTATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %62

19:                                               ; preds = %11
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @cpumask_test_cpu(i64 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %19
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %36 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %46 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %49 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpumask_set_cpu(i64 %47, i32 %50)
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %58 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %59 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @trace_seq_printf(%struct.trace_seq* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %10, %18, %28, %43, %56, %44
  ret void
}

declare dso_local i64 @cpumask_test_cpu(i64, i32) #1

declare dso_local i32 @cpumask_set_cpu(i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
