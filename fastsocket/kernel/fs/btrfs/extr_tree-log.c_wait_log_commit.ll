; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_wait_log_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-log.c_wait_log_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i64, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64)* @wait_log_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_log_commit(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = urem i64 %10, 2
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %89, %3
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %21 = call i32 @prepare_to_wait(i32* %19, i32* @wait, i32 %20)
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %13
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 2
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 (...) @schedule()
  br label %52

52:                                               ; preds = %50, %41, %34, %13
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @finish_wait(i32* %58, i32* @wait)
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  br label %63

63:                                               ; preds = %52
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %63
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 2
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i64 @atomic_read(i32* %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %80, %73, %63
  %90 = phi i1 [ false, %73 ], [ false, %63 ], [ %88, %80 ]
  br i1 %90, label %13, label %91

91:                                               ; preds = %89
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
