; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_put_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_put_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_pid(%struct.pid* %0) #0 {
  %2 = alloca %struct.pid*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  store %struct.pid* %0, %struct.pid** %2, align 8
  %4 = load %struct.pid*, %struct.pid** %2, align 8
  %5 = icmp ne %struct.pid* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.pid*, %struct.pid** %2, align 8
  %9 = getelementptr inbounds %struct.pid, %struct.pid* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.pid*, %struct.pid** %2, align 8
  %12 = getelementptr inbounds %struct.pid, %struct.pid* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %15, align 8
  store %struct.pid_namespace* %16, %struct.pid_namespace** %3, align 8
  %17 = load %struct.pid*, %struct.pid** %2, align 8
  %18 = getelementptr inbounds %struct.pid, %struct.pid* %17, i32 0, i32 1
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %7
  %22 = load %struct.pid*, %struct.pid** %2, align 8
  %23 = getelementptr inbounds %struct.pid, %struct.pid* %22, i32 0, i32 1
  %24 = call i64 @atomic_dec_and_test(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21, %7
  %27 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %28 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pid*, %struct.pid** %2, align 8
  %31 = call i32 @kmem_cache_free(i32 %29, %struct.pid* %30)
  %32 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %33 = call i32 @put_pid_ns(%struct.pid_namespace* %32)
  br label %34

34:                                               ; preds = %6, %26, %21
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pid*) #1

declare dso_local i32 @put_pid_ns(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
