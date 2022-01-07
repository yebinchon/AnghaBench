; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_rw_siginfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_rw_siginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.ptrace_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@PTRACE_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.ptrace_context*, %struct.TYPE_4__*, i32)* @ptrace_rw_siginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_rw_siginfo(%struct.task_struct* %0, %struct.ptrace_context* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.ptrace_context*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.ptrace_context* %1, %struct.ptrace_context** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ptrace_context*, %struct.ptrace_context** %7, align 8
  %13 = call i32 @get_stop_event(%struct.ptrace_context* %12)
  switch i32 %13, label %51 [
    i32 0, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %76

17:                                               ; preds = %4
  %18 = load i32, i32* @ESRCH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = call i32 @lock_task_sighand(%struct.task_struct* %20, i64* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = call i32 @task_is_traced(%struct.task_struct* %24)
  %26 = call i32 @likely(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.ptrace_context*, %struct.ptrace_context** %7, align 8
  %33 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = bitcast %struct.TYPE_4__* %34 to i8*
  %37 = bitcast %struct.TYPE_4__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 16, i1 false)
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = load %struct.ptrace_context*, %struct.ptrace_context** %7, align 8
  %41 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = bitcast %struct.TYPE_4__* %39 to i8*
  %44 = bitcast %struct.TYPE_4__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 16, i1 false)
  br label %45

45:                                               ; preds = %38, %31
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %48 = call i32 @unlock_task_sighand(%struct.task_struct* %47, i64* %10)
  br label %49

49:                                               ; preds = %46, %17
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %76

51:                                               ; preds = %4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = call i32 @memset(%struct.TYPE_4__* %55, i32 0, i32 16)
  %57 = load i32, i32* @SIGTRAP, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ptrace_context*, %struct.ptrace_context** %7, align 8
  %61 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PTRACE_EVENT_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = call i32 @task_pid_vnr(%struct.task_struct* %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %72 = call i32 @task_uid(%struct.task_struct* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %54, %51
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %49, %14
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @get_stop_event(%struct.ptrace_context*) #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @task_is_traced(%struct.task_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
