; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_percpu_counter.c___percpu_counter_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_percpu_counter.c___percpu_counter_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_counter = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__percpu_counter_add(%struct.percpu_counter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.percpu_counter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.percpu_counter* %0, %struct.percpu_counter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 (...) @get_cpu()
  store i32 %10, i32* %9, align 4
  %11 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %12 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64* @per_cpu_ptr(i32 %13, i32 %14)
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 0, %25
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23, %3
  %29 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %30 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %34 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i64*, i64** %8, align 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %39 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %44

41:                                               ; preds = %23
  %42 = load i64, i64* %7, align 8
  %43 = load i64*, i64** %8, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %28
  %45 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
