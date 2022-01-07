; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_reuse_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_reuse_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32* }
%struct.task_struct = type { i32 }
%struct.ptrace_context = type { i64, i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@PTRACE_O_DETACHED = common dso_local global i64 0, align 8
@QUIESCE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@ptrace_utrace_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.utrace_engine* (%struct.task_struct*)* @ptrace_reuse_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.utrace_engine* @ptrace_reuse_engine(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.utrace_engine*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace_engine*, align 8
  %5 = alloca %struct.ptrace_context*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct* %9)
  store %struct.utrace_engine* %10, %struct.utrace_engine** %4, align 8
  %11 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %12 = call i64 @IS_ERR(%struct.utrace_engine* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  store %struct.utrace_engine* %15, %struct.utrace_engine** %2, align 8
  br label %82

16:                                               ; preds = %1
  %17 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %18 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %17)
  store %struct.ptrace_context* %18, %struct.ptrace_context** %5, align 8
  %19 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %20 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PTRACE_O_DETACHED, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %77

27:                                               ; preds = %16
  %28 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %29 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %31 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %34 = load i32, i32* @QUIESCE, align 4
  %35 = call i32 @UTRACE_EVENT(i32 %34)
  %36 = call i32 @utrace_set_events(%struct.task_struct* %32, %struct.utrace_engine* %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39, %27
  %45 = load i32, i32* @UTRACE_RESUME, align 4
  %46 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %47 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %50 = call i32 @utrace_barrier_uninterruptible(%struct.task_struct* %48, %struct.utrace_engine* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %56 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, @ptrace_utrace_ops
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %61 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  store %struct.utrace_engine* %69, %struct.utrace_engine** %2, align 8
  br label %82

70:                                               ; preds = %51
  %71 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %72 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, @ptrace_utrace_ops
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  br label %77

77:                                               ; preds = %70, %16
  %78 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %79 = call i32 @utrace_engine_put(%struct.utrace_engine* %78)
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.utrace_engine* @ERR_PTR(i32 %80)
  store %struct.utrace_engine* %81, %struct.utrace_engine** %2, align 8
  br label %82

82:                                               ; preds = %77, %65, %14
  %83 = load %struct.utrace_engine*, %struct.utrace_engine** %2, align 8
  ret %struct.utrace_engine* %83
}

declare dso_local %struct.utrace_engine* @ptrace_lookup_engine(%struct.task_struct*) #1

declare dso_local i64 @IS_ERR(%struct.utrace_engine*) #1

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @utrace_set_events(%struct.task_struct*, %struct.utrace_engine*, i32) #1

declare dso_local i32 @UTRACE_EVENT(i32) #1

declare dso_local i32 @utrace_barrier_uninterruptible(%struct.task_struct*, %struct.utrace_engine*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @utrace_engine_put(%struct.utrace_engine*) #1

declare dso_local %struct.utrace_engine* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
