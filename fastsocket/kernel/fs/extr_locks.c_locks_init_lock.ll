; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_init_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_init_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32*, i32*, i64, i64, i64, i64, i32*, i32*, i64, i32*, i32*, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_init_lock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 14
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 13
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %10 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 12
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 11
  store i32* null, i32** %13, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 10
  store i32* null, i32** %15, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 9
  store i32* null, i32** %17, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  %24 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %29 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
