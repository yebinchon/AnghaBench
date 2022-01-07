; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_accumulate_thread_rusage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_accumulate_thread_rusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i64, i64 }
%struct.rusage = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.rusage*)* @accumulate_thread_rusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accumulate_thread_rusage(%struct.task_struct* %0, %struct.rusage* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.rusage*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.rusage* %1, %struct.rusage** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rusage*, %struct.rusage** %4, align 8
  %9 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rusage*, %struct.rusage** %4, align 8
  %18 = getelementptr inbounds %struct.rusage, %struct.rusage* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rusage*, %struct.rusage** %4, align 8
  %27 = getelementptr inbounds %struct.rusage, %struct.rusage* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rusage*, %struct.rusage** %4, align 8
  %36 = getelementptr inbounds %struct.rusage, %struct.rusage* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = call i64 @task_io_get_inblock(%struct.task_struct* %41)
  %43 = load %struct.rusage*, %struct.rusage** %4, align 8
  %44 = getelementptr inbounds %struct.rusage, %struct.rusage* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = call i64 @task_io_get_oublock(%struct.task_struct* %49)
  %51 = load %struct.rusage*, %struct.rusage** %4, align 8
  %52 = getelementptr inbounds %struct.rusage, %struct.rusage* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  ret void
}

declare dso_local i64 @task_io_get_inblock(%struct.task_struct*) #1

declare dso_local i64 @task_io_get_oublock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
