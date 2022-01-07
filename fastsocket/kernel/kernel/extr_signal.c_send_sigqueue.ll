; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_send_sigqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_send_sigqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigqueue = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.task_struct = type { %struct.sigpending, %struct.TYPE_3__* }
%struct.sigpending = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.sigpending }

@SIGQUEUE_PREALLOC = common dso_local global i32 0, align 4
@TRACE_SIGNAL_IGNORED = common dso_local global i32 0, align 4
@SI_TIMER = common dso_local global i64 0, align 8
@TRACE_SIGNAL_ALREADY_PENDING = common dso_local global i32 0, align 4
@TRACE_SIGNAL_DELIVERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_sigqueue(%struct.sigqueue* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.sigqueue*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigpending*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sigqueue* %0, %struct.sigqueue** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %13 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %17 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SIGQUEUE_PREALLOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  store i32 -1, i32* %10, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call i32 @lock_task_sighand(%struct.task_struct* %25, i64* %9)
  %27 = call i32 @likely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %104

30:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %31 = load i32, i32* @TRACE_SIGNAL_IGNORED, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = call i32 @prepare_signal(i32 %32, %struct.task_struct* %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %94

37:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %38 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %39 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %38, i32 0, i32 2
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %48 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SI_TIMER, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %56 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* @TRACE_SIGNAL_ALREADY_PENDING, align 4
  store i32 %60, i32* %11, align 4
  br label %94

61:                                               ; preds = %37
  %62 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %63 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @signalfd_notify(%struct.task_struct* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  br label %78

75:                                               ; preds = %61
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi %struct.sigpending* [ %74, %70 ], [ %77, %75 ]
  store %struct.sigpending* %79, %struct.sigpending** %8, align 8
  %80 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %81 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %80, i32 0, i32 2
  %82 = load %struct.sigpending*, %struct.sigpending** %8, align 8
  %83 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %82, i32 0, i32 1
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  %85 = load %struct.sigpending*, %struct.sigpending** %8, align 8
  %86 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @sigaddset(i32* %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @complete_signal(i32 %89, %struct.task_struct* %90, i32 %91)
  %93 = load i32, i32* @TRACE_SIGNAL_DELIVERED, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %78, %46, %36
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %97 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %96, i32 0, i32 1
  %98 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @trace_signal_generate(i32 %95, %struct.TYPE_4__* %97, %struct.task_struct* %98, i32 %99, i32 %100)
  %102 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %103 = call i32 @unlock_task_sighand(%struct.task_struct* %102, i64* %9)
  br label %104

104:                                              ; preds = %94, %29
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @prepare_signal(i32, %struct.task_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @signalfd_notify(%struct.task_struct*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @complete_signal(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @trace_signal_generate(i32, %struct.TYPE_4__*, %struct.task_struct*, i32, i32) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
