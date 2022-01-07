; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_commit_transaction_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_btrfs_commit_transaction_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_async_commit = type { i32, i32, %struct.btrfs_root* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_async_commit = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_commit_transaction_async(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_async_commit*, align 8
  %9 = alloca %struct.btrfs_transaction*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.btrfs_async_commit* @kmalloc(i32 16, i32 %11)
  store %struct.btrfs_async_commit* %12, %struct.btrfs_async_commit** %8, align 8
  %13 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %14 = icmp ne %struct.btrfs_async_commit* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %19, i32 0, i32 0
  %21 = load i32, i32* @do_async_commit, align 4
  %22 = call i32 @INIT_DELAYED_WORK(i32* %20, i32 %21)
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %24 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %24, i32 0, i32 2
  store %struct.btrfs_root* %23, %struct.btrfs_root** %25, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %27 = call i32 @btrfs_join_transaction(%struct.btrfs_root* %26)
  %28 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %31 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %18
  %36 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %41 = call i32 @kfree(%struct.btrfs_async_commit* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %78

43:                                               ; preds = %18
  %44 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %44, i32 0, i32 0
  %46 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %45, align 8
  store %struct.btrfs_transaction* %46, %struct.btrfs_transaction** %9, align 8
  %47 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %48 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %52 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %50, %struct.btrfs_root* %51)
  %53 = load %struct.btrfs_async_commit*, %struct.btrfs_async_commit** %8, align 8
  %54 = getelementptr inbounds %struct.btrfs_async_commit, %struct.btrfs_async_commit* %53, i32 0, i32 0
  %55 = call i32 @schedule_delayed_work(i32* %54, i32 0)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %60 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %61 = call i32 @wait_current_trans_commit_start_and_unblock(%struct.btrfs_root* %59, %struct.btrfs_transaction* %60)
  br label %66

62:                                               ; preds = %43
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %64 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %65 = call i32 @wait_current_trans_commit_start(%struct.btrfs_root* %63, %struct.btrfs_transaction* %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %68, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %71 = icmp eq %struct.btrfs_trans_handle* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %77 = call i32 @put_transaction(%struct.btrfs_transaction* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %35, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.btrfs_async_commit* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_async_commit*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wait_current_trans_commit_start_and_unblock(%struct.btrfs_root*, %struct.btrfs_transaction*) #1

declare dso_local i32 @wait_current_trans_commit_start(%struct.btrfs_root*, %struct.btrfs_transaction*) #1

declare dso_local i32 @put_transaction(%struct.btrfs_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
