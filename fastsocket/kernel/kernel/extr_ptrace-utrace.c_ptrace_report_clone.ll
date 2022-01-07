; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.task_struct = type { i32 }
%struct.ptrace_context = type { i32, i32 }

@CLONE_UNTRACED = common dso_local global i64 0, align 8
@CLONE_VFORK = common dso_local global i64 0, align 8
@PTRACE_O_TRACEVFORK = common dso_local global i32 0, align 4
@PTRACE_EVENT_VFORK = common dso_local global i32 0, align 4
@PTRACE_O_TRACEVFORKDONE = common dso_local global i32 0, align 4
@PTRACE_EVENT_VFORK_DONE = common dso_local global i32 0, align 4
@CSIGNAL = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i64 0, align 8
@PTRACE_O_TRACECLONE = common dso_local global i32 0, align 4
@PTRACE_EVENT_CLONE = common dso_local global i32 0, align 4
@PTRACE_O_TRACEFORK = common dso_local global i32 0, align 4
@PTRACE_EVENT_FORK = common dso_local global i32 0, align 4
@CLONE_PTRACE = common dso_local global i64 0, align 8
@UTRACE_RESUME = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i32 0, align 4
@UTRACE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.utrace_engine*, i64, %struct.task_struct*)* @ptrace_report_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_report_clone(i32 %0, %struct.utrace_engine* %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.utrace_engine*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.ptrace_context*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.utrace_engine* %1, %struct.utrace_engine** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %12 = load %struct.utrace_engine*, %struct.utrace_engine** %7, align 8
  %13 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %12)
  store %struct.ptrace_context* %13, %struct.ptrace_context** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %15 = call i32 @ptrace_event_pending(%struct.ptrace_context* %14)
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @CLONE_UNTRACED, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %75

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @CLONE_VFORK, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %29 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PTRACE_O_TRACEVFORK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @PTRACE_EVENT_VFORK, align 4
  store i32 %35, i32* %11, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %38 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PTRACE_O_TRACEVFORKDONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @PTRACE_EVENT_VFORK_DONE, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %34
  br label %74

47:                                               ; preds = %22
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @CSIGNAL, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* @SIGCHLD, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %55 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PTRACE_O_TRACECLONE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @PTRACE_EVENT_CLONE, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %53
  br label %73

63:                                               ; preds = %47
  %64 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %65 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PTRACE_O_TRACEFORK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @PTRACE_EVENT_FORK, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %21
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @PTRACE_EVENT_VFORK_DONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %78, %75
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @CLONE_PTRACE, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %78
  %88 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %89 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %90 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ptrace_clone_attach(%struct.task_struct* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @UTRACE_RESUME, align 4
  store i32 %97, i32* %5, align 4
  br label %113

98:                                               ; preds = %93
  %99 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @set_stop_code(%struct.ptrace_context* %99, i32 %100)
  %102 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %103 = call i32 @task_pid_vnr(%struct.task_struct* %102)
  %104 = load %struct.ptrace_context*, %struct.ptrace_context** %10, align 8
  %105 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @PTRACE_EVENT_VFORK_DONE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @UTRACE_REPORT, align 4
  store i32 %110, i32* %5, align 4
  br label %113

111:                                              ; preds = %98
  %112 = load i32, i32* @UTRACE_STOP, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %109, %96
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ptrace_event_pending(%struct.ptrace_context*) #1

declare dso_local i32 @ptrace_clone_attach(%struct.task_struct*, i32) #1

declare dso_local i32 @set_stop_code(%struct.ptrace_context*, i32) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
