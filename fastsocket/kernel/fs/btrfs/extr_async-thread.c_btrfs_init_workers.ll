; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_init_workers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_init_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workers = type { i32, i32, i8*, %struct.btrfs_workers*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_workers(%struct.btrfs_workers* %0, i8* %1, i32 %2, %struct.btrfs_workers* %3) #0 {
  %5 = alloca %struct.btrfs_workers*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_workers*, align 8
  store %struct.btrfs_workers* %0, %struct.btrfs_workers** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.btrfs_workers* %3, %struct.btrfs_workers** %8, align 8
  %9 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %9, i32 0, i32 13
  store i64 0, i64* %10, align 8
  %11 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %13, i32 0, i32 11
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %16, i32 0, i32 10
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %19, i32 0, i32 9
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %22, i32 0, i32 8
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %28, i32 0, i32 6
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %34, i32 0, i32 1
  store i32 32, i32* %35, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.btrfs_workers*, %struct.btrfs_workers** %8, align 8
  %44 = load %struct.btrfs_workers*, %struct.btrfs_workers** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %44, i32 0, i32 3
  store %struct.btrfs_workers* %43, %struct.btrfs_workers** %45, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
