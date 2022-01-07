; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_ptrace_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_ptrace_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@PT_PTRACED = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, %struct.pt_regs*, i8*)* @ptrace_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_signal(i32 %0, %struct.TYPE_8__* %1, %struct.pt_regs* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %11 = call i32 @task_ptrace(%struct.TYPE_9__* %10)
  %12 = load i32, i32* @PT_PTRACED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  br label %73

17:                                               ; preds = %4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @ptrace_signal_deliver(%struct.pt_regs* %18, i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = call i32 @ptrace_stop(i32 %21, i32 0, %struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %73

31:                                               ; preds = %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @SI_USER, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @task_pid_vnr(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @task_uid(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %39, %31
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @sigismember(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %70 = call i32 @specific_send_sig_info(i32 %67, %struct.TYPE_8__* %68, %struct.TYPE_9__* %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %29, %15
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @task_ptrace(%struct.TYPE_9__*) #1

declare dso_local i32 @ptrace_signal_deliver(%struct.pt_regs*, i8*) #1

declare dso_local i32 @ptrace_stop(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @task_pid_vnr(i32) #1

declare dso_local i32 @task_uid(i32) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i32 @specific_send_sig_info(i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
