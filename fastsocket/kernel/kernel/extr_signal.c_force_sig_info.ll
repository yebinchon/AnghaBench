; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_force_sig_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_force_sig_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8
@SIGNAL_UNKILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_sig_info(i32 %0, %struct.siginfo* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.k_sigaction*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.siginfo* %1, %struct.siginfo** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.k_sigaction*, %struct.k_sigaction** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %22, i64 %25
  store %struct.k_sigaction* %26, %struct.k_sigaction** %11, align 8
  %27 = load %struct.k_sigaction*, %struct.k_sigaction** %11, align 8
  %28 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SIG_IGN, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sigismember(i32* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40, %3
  %44 = load i64, i64* @SIG_DFL, align 8
  %45 = load %struct.k_sigaction*, %struct.k_sigaction** %11, align 8
  %46 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @sigdelset(i32* %52, i32 %53)
  %55 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %56 = call i32 @recalc_sigpending_and_wake(%struct.task_struct* %55)
  br label %57

57:                                               ; preds = %50, %43
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.k_sigaction*, %struct.k_sigaction** %11, align 8
  %60 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIG_DFL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* @SIGNAL_UNKILLABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %67
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %58
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.siginfo*, %struct.siginfo** %5, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %78 = call i32 @specific_send_sig_info(i32 %75, %struct.siginfo* %76, %struct.task_struct* %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sigismember(i32*, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @recalc_sigpending_and_wake(%struct.task_struct*) #1

declare dso_local i32 @specific_send_sig_info(i32, %struct.siginfo*, %struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
