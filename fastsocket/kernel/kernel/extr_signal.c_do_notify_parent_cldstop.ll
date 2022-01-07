; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_notify_parent_cldstop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_notify_parent_cldstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.sighand_struct*, %struct.TYPE_5__*, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct* }
%struct.sighand_struct = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.siginfo = type { i32, i32, i32, i8*, i8*, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SA_NOCLDSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_notify_parent_cldstop(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sighand_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call i64 @task_ptrace(%struct.task_struct* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 7
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 6
  %19 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  store %struct.task_struct* %19, %struct.task_struct** %3, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 5
  %22 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  store %struct.task_struct* %22, %struct.task_struct** %7, align 8
  br label %23

23:                                               ; preds = %16, %12
  %24 = load i32, i32* @SIGCHLD, align 4
  %25 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = call i32 @task_active_pid_ns(%struct.task_struct* %29)
  %31 = call i32 @task_pid_nr_ns(%struct.task_struct* %28, i32 %30)
  %32 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 6
  store i32 %31, i32* %32, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = call %struct.TYPE_8__* @__task_cred(%struct.task_struct* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 5
  store i32 %36, i32* %37, align 8
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cputime_to_clock_t(i32 %41)
  %43 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cputime_to_clock_t(i32 %46)
  %48 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %69 [
    i32 130, label %52
    i32 129, label %55
    i32 128, label %63
  ]

52:                                               ; preds = %23
  %53 = load i32, i32* @SIGCONT, align 4
  %54 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  br label %71

55:                                               ; preds = %23
  %56 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 127
  %62 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  br label %71

63:                                               ; preds = %23
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 127
  %68 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  br label %71

69:                                               ; preds = %23
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %63, %55, %52
  %72 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 1
  %74 = load %struct.sighand_struct*, %struct.sighand_struct** %73, align 8
  store %struct.sighand_struct* %74, %struct.sighand_struct** %8, align 8
  %75 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %76 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %75, i32 0, i32 0
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %80 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* @SIGCHLD, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SIG_IGN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %71
  %92 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %93 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* @SIGCHLD, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SA_NOCLDSTOP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %91
  %106 = load i32, i32* @SIGCHLD, align 4
  %107 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %108 = call i32 @__group_send_sig_info(i32 %106, %struct.siginfo* %5, %struct.task_struct* %107)
  br label %109

109:                                              ; preds = %105, %91, %71
  %110 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %111 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %112 = call i32 @__wake_up_parent(%struct.task_struct* %110, %struct.task_struct* %111)
  %113 = load %struct.sighand_struct*, %struct.sighand_struct** %8, align 8
  %114 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %113, i32 0, i32 0
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  ret void
}

declare dso_local i64 @task_ptrace(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, i32) #1

declare dso_local i32 @task_active_pid_ns(%struct.task_struct*) #1

declare dso_local %struct.TYPE_8__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @cputime_to_clock_t(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__group_send_sig_info(i32, %struct.siginfo*, %struct.task_struct*) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
