; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_cleanup_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_cleanup_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32, %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, %struct.btrfs_transaction* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32)* @cleanup_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_transaction(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %8, i32 0, i32 1
  %10 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  store %struct.btrfs_transaction* %10, %struct.btrfs_transaction** %7, align 8
  %11 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %17, %struct.btrfs_root* %18, i32 %19)
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %26, i32 0, i32 0
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %33, align 8
  %35 = icmp eq %struct.btrfs_transaction* %29, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store %struct.btrfs_transaction* null, %struct.btrfs_transaction** %40, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %36, %3
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %51, i32 0, i32 1
  %53 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %52, align 8
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %55 = call i32 @btrfs_cleanup_one_transaction(%struct.btrfs_transaction* %53, %struct.btrfs_root* %54)
  %56 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %57 = call i32 @put_transaction(%struct.btrfs_transaction* %56)
  %58 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %59 = call i32 @put_transaction(%struct.btrfs_transaction* %58)
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %61 = call i32 @trace_btrfs_transaction_commit(%struct.btrfs_root* %60)
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %63 = call i32 @btrfs_scrub_continue(%struct.btrfs_root* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %65, align 8
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %68 = icmp eq %struct.btrfs_trans_handle* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %45
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %71, align 8
  br label %72

72:                                               ; preds = %69, %45
  %73 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %75 = call i32 @kmem_cache_free(i32 %73, %struct.btrfs_trans_handle* %74)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_cleanup_one_transaction(%struct.btrfs_transaction*, %struct.btrfs_root*) #1

declare dso_local i32 @put_transaction(%struct.btrfs_transaction*) #1

declare dso_local i32 @trace_btrfs_transaction_commit(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_scrub_continue(%struct.btrfs_root*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
