; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_insert_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_insert_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_root_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_key* %2, %struct.btrfs_root_item* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca %struct.btrfs_root_item*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %7, align 8
  store %struct.btrfs_root_item* %3, %struct.btrfs_root_item** %8, align 8
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %11 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %12 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %8, align 8
  %13 = call i32 @btrfs_insert_item(%struct.btrfs_trans_handle* %9, %struct.btrfs_root* %10, %struct.btrfs_key* %11, %struct.btrfs_root_item* %12, i32 4)
  ret i32 %13
}

declare dso_local i32 @btrfs_insert_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_root_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
