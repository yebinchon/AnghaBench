; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_record_root_in_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_record_root_in_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.btrfs_root* }
%struct.TYPE_3__ = type { i64 }

@BTRFS_ROOT_TRANS_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @record_root_in_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_root_in_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %2
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %10
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  %25 = icmp eq %struct.btrfs_root* %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  %39 = call i32 (...) @smp_wmb()
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %49 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %18
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  store i32 0, i32* %3, align 4
  br label %86

58:                                               ; preds = %18
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @BTRFS_ROOT_TRANS_TAG, align 4
  %68 = call i32 @radix_tree_tag_set(i32* %62, i64 %66, i32 %67)
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %75 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %81 = call i32 @btrfs_init_reloc_root(%struct.btrfs_trans_handle* %79, %struct.btrfs_root* %80)
  %82 = call i32 (...) @smp_wmb()
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %84 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %83, i32 0, i32 3
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %58, %10, %2
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i64, i32) #1

declare dso_local i32 @btrfs_init_reloc_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
