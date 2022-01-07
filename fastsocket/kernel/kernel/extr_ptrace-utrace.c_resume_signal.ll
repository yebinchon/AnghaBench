; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_resume_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_resume_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.k_sigaction* }
%struct.k_sigaction = type { i32 }
%struct.ptrace_context = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }

@UTRACE_SIGNAL_IGN = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@UTRACE_SIGNAL_DELIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptrace_context*, %struct.k_sigaction*)* @resume_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_signal(%struct.ptrace_context* %0, %struct.k_sigaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptrace_context*, align 8
  %5 = alloca %struct.k_sigaction*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.ptrace_context* %0, %struct.ptrace_context** %4, align 8
  store %struct.k_sigaction* %1, %struct.k_sigaction** %5, align 8
  %8 = load %struct.ptrace_context*, %struct.ptrace_context** %4, align 8
  %9 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.ptrace_context*, %struct.ptrace_context** %4, align 8
  %12 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ptrace_context*, %struct.ptrace_context** %4, align 8
  %15 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %14, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %16 = load %struct.ptrace_context*, %struct.ptrace_context** %4, align 8
  %17 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @UTRACE_SIGNAL_IGN, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @SI_USER, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @task_pid_vnr(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @task_uid(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %28, %22
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @sigismember(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %59 = call i32 @send_sig_info(i32 %56, %struct.TYPE_7__* %57, %struct.TYPE_8__* %58)
  %60 = load i32, i32* @UTRACE_SIGNAL_IGN, align 4
  store i32 %60, i32* %3, align 4
  br label %85

61:                                               ; preds = %49
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @spin_lock_irq(i32* %65)
  %67 = load %struct.k_sigaction*, %struct.k_sigaction** %5, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.k_sigaction*, %struct.k_sigaction** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %72, i64 %75
  %77 = bitcast %struct.k_sigaction* %67 to i8*
  %78 = bitcast %struct.k_sigaction* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  %84 = load i32, i32* @UTRACE_SIGNAL_DELIVER, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %61, %55, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @task_pid_vnr(i32) #1

declare dso_local i32 @task_uid(i32) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i32 @send_sig_info(i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
