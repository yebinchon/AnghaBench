; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_sigaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.k_sigaction* }
%struct.k_sigaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sigaction(i32 %0, %struct.k_sigaction* %1, %struct.k_sigaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.k_sigaction*, align 8
  %7 = alloca %struct.k_sigaction*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.k_sigaction*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.k_sigaction* %1, %struct.k_sigaction** %6, align 8
  store %struct.k_sigaction* %2, %struct.k_sigaction** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %11, %struct.task_struct** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @valid_signal(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %20 = icmp ne %struct.k_sigaction* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @sig_kernel_only(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %15, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %100

28:                                               ; preds = %21, %18
  %29 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.k_sigaction*, %struct.k_sigaction** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %33, i64 %36
  store %struct.k_sigaction* %37, %struct.k_sigaction** %9, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_irq(i32* %41)
  %43 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %44 = icmp ne %struct.k_sigaction* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.k_sigaction*, %struct.k_sigaction** %7, align 8
  %47 = load %struct.k_sigaction*, %struct.k_sigaction** %9, align 8
  %48 = bitcast %struct.k_sigaction* %46 to i8*
  %49 = bitcast %struct.k_sigaction* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %52 = icmp ne %struct.k_sigaction* %51, null
  br i1 %52, label %53, label %94

53:                                               ; preds = %50
  %54 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %55 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* @SIGKILL, align 4
  %58 = call i32 @sigmask(i32 %57)
  %59 = load i32, i32* @SIGSTOP, align 4
  %60 = call i32 @sigmask(i32 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @sigdelsetmask(i32* %56, i32 %61)
  %63 = load %struct.k_sigaction*, %struct.k_sigaction** %9, align 8
  %64 = load %struct.k_sigaction*, %struct.k_sigaction** %6, align 8
  %65 = bitcast %struct.k_sigaction* %63 to i8*
  %66 = bitcast %struct.k_sigaction* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @sig_handler(%struct.task_struct* %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @sig_handler_ignored(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %53
  %74 = call i32 @sigemptyset(i32* %10)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sigaddset(i32* %10, i32 %75)
  %77 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @rm_from_queue_full(i32* %10, i32* %80)
  br label %82

82:                                               ; preds = %88, %73
  %83 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  %85 = call i32 @rm_from_queue_full(i32* %10, i32* %84)
  %86 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %87 = call %struct.task_struct* @next_thread(%struct.task_struct* %86)
  store %struct.task_struct* %87, %struct.task_struct** %8, align 8
  br label %88

88:                                               ; preds = %82
  %89 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %91 = icmp ne %struct.task_struct* %89, %90
  br i1 %91, label %82, label %92

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %53
  br label %94

94:                                               ; preds = %93, %50
  %95 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %96 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_irq(i32* %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i64 @sig_kernel_only(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sigdelsetmask(i32*, i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i64 @sig_handler_ignored(i32, i32) #1

declare dso_local i32 @sig_handler(%struct.task_struct*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @rm_from_queue_full(i32*, i32*) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
