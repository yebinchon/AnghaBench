; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_attach_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_attach_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.task_struct = type { i32 }
%struct.ptrace_context = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@UTRACE_ATTACH_CREATE = common dso_local global i32 0, align 4
@UTRACE_ATTACH_EXCLUSIVE = common dso_local global i32 0, align 4
@UTRACE_ATTACH_MATCH_OPS = common dso_local global i32 0, align 4
@ptrace_utrace_ops = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.utrace_engine* (%struct.task_struct*)* @ptrace_attach_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.utrace_engine* @ptrace_attach_engine(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.utrace_engine*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace_engine*, align 8
  %5 = alloca %struct.ptrace_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i32 @task_utrace_flags(%struct.task_struct* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call %struct.utrace_engine* @ptrace_reuse_engine(%struct.task_struct* %11)
  store %struct.utrace_engine* %12, %struct.utrace_engine** %4, align 8
  %13 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %14 = call i32 @IS_ERR(%struct.utrace_engine* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %18 = call i32 @IS_ERR(%struct.utrace_engine* %17)
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %10
  %23 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  store %struct.utrace_engine* %23, %struct.utrace_engine** %2, align 8
  br label %75

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ptrace_context* @kzalloc(i32 4, i32 %26)
  store %struct.ptrace_context* %27, %struct.ptrace_context** %5, align 8
  %28 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %29 = icmp ne %struct.ptrace_context* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.utrace_engine* @ERR_PTR(i32 %36)
  store %struct.utrace_engine* %37, %struct.utrace_engine** %2, align 8
  br label %75

38:                                               ; preds = %25
  %39 = load i32, i32* @UTRACE_RESUME, align 4
  %40 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %41 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = load i32, i32* @UTRACE_ATTACH_CREATE, align 4
  %44 = load i32, i32* @UTRACE_ATTACH_EXCLUSIVE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UTRACE_ATTACH_MATCH_OPS, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %49 = call %struct.utrace_engine* @utrace_attach_task(%struct.task_struct* %42, i32 %47, i32* @ptrace_utrace_ops, %struct.ptrace_context* %48)
  store %struct.utrace_engine* %49, %struct.utrace_engine** %4, align 8
  %50 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %51 = call i32 @IS_ERR(%struct.utrace_engine* %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %38
  %55 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %56 = load i32, i32* @ESRCH, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.utrace_engine* @ERR_PTR(i32 %57)
  %59 = icmp ne %struct.utrace_engine* %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  %62 = load i32, i32* @ERESTARTNOINTR, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.utrace_engine* @ERR_PTR(i32 %63)
  %65 = icmp ne %struct.utrace_engine* %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.utrace_engine* @ERR_PTR(i32 %68)
  store %struct.utrace_engine* %69, %struct.utrace_engine** %4, align 8
  br label %70

70:                                               ; preds = %66, %60, %54
  %71 = load %struct.ptrace_context*, %struct.ptrace_context** %5, align 8
  %72 = call i32 @kfree(%struct.ptrace_context* %71)
  br label %73

73:                                               ; preds = %70, %38
  %74 = load %struct.utrace_engine*, %struct.utrace_engine** %4, align 8
  store %struct.utrace_engine* %74, %struct.utrace_engine** %2, align 8
  br label %75

75:                                               ; preds = %73, %34, %22
  %76 = load %struct.utrace_engine*, %struct.utrace_engine** %2, align 8
  ret %struct.utrace_engine* %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_utrace_flags(%struct.task_struct*) #1

declare dso_local %struct.utrace_engine* @ptrace_reuse_engine(%struct.task_struct*) #1

declare dso_local i32 @IS_ERR(%struct.utrace_engine*) #1

declare dso_local %struct.ptrace_context* @kzalloc(i32, i32) #1

declare dso_local %struct.utrace_engine* @ERR_PTR(i32) #1

declare dso_local %struct.utrace_engine* @utrace_attach_task(%struct.task_struct*, i32, i32*, %struct.ptrace_context*) #1

declare dso_local i32 @kfree(%struct.ptrace_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
