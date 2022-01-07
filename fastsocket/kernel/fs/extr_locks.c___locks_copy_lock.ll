; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c___locks_copy_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c___locks_copy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32*, i32*, i32, i32, i32, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__locks_copy_lock(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %9 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 4
  %10 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 6
  store i32* null, i32** %16, align 8
  %17 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %26 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
