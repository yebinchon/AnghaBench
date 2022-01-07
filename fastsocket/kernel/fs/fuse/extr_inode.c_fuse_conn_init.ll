; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_conn_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FUSE_DEFAULT_MAX_BACKGROUND = common dso_local global i32 0, align 4
@FUSE_DEFAULT_CONGESTION_THRESHOLD = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_conn_init(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_conn*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %2, align 8
  %3 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %4 = call i32 @memset(%struct.fuse_conn* %3, i32 0, i32 104)
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %6 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %5, i32 0, i32 21
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %9 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %8, i32 0, i32 20
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 19
  %13 = call i32 @init_rwsem(i32* %12)
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 18
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 17
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 16
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %24 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %23, i32 0, i32 15
  %25 = call i32 @init_waitqueue_head(i32* %24)
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 14
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %30 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %29, i32 0, i32 13
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %33 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %32, i32 0, i32 12
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 11
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %39 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %38, i32 0, i32 10
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 9
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %45 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %44, i32 0, i32 8
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load i32, i32* @FUSE_DEFAULT_MAX_BACKGROUND, align 4
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @FUSE_DEFAULT_CONGESTION_THRESHOLD, align 4
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @RB_ROOT, align 4
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %57 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %59 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %61 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %63 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %65 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %64, i32 0, i32 2
  %66 = call i32 @get_random_bytes(i32* %65, i32 4)
  ret void
}

declare dso_local i32 @memset(%struct.fuse_conn*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
