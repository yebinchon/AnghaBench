; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_file_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { i64, i32, i32, i32, i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_file*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_file*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fuse_file* @kmalloc(i32 40, i32 %5)
  store %struct.fuse_file* %6, %struct.fuse_file** %4, align 8
  %7 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %8 = icmp ne %struct.fuse_file* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.fuse_file* null, %struct.fuse_file** %2, align 8
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %16 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %16, i32 0, i32 6
  store %struct.fuse_conn* %15, %struct.fuse_conn** %17, align 8
  %18 = call i32 @fuse_request_alloc(i32 0)
  %19 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %22 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %31 = call i32 @kfree(%struct.fuse_file* %30)
  store %struct.fuse_file* null, %struct.fuse_file** %2, align 8
  br label %58

32:                                               ; preds = %14
  %33 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %33, i32 0, i32 4
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %37 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %36, i32 0, i32 3
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %39, i32 0, i32 2
  %41 = call i32 @RB_CLEAR_NODE(i32* %40)
  %42 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %43 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %42, i32 0, i32 1
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %53 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %55 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  store %struct.fuse_file* %57, %struct.fuse_file** %2, align 8
  br label %58

58:                                               ; preds = %32, %29, %13
  %59 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  ret %struct.fuse_file* %59
}

declare dso_local %struct.fuse_file* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fuse_request_alloc(i32) #1

declare dso_local i32 @kfree(%struct.fuse_file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
