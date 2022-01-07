; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_update_super_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_update_super_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.btrfs_super_block* }
%struct.TYPE_5__ = type { %struct.btrfs_root_item }
%struct.btrfs_root_item = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root_item }
%struct.btrfs_super_block = type { i32, i32, i32, i32, i32, i32, i32 }

@SPACE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @update_super_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_super_roots(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_root_item*, align 8
  %4 = alloca %struct.btrfs_super_block*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  store %struct.btrfs_super_block* %9, %struct.btrfs_super_block** %4, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.btrfs_root_item* %15, %struct.btrfs_root_item** %3, align 8
  %16 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.btrfs_root_item* %36, %struct.btrfs_root_item** %3, align 8
  %37 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %51 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %53 = load i32, i32* @SPACE_CACHE, align 4
  %54 = call i64 @btrfs_test_opt(%struct.btrfs_root* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %58 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %4, align 8
  %61 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %1
  ret void
}

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
