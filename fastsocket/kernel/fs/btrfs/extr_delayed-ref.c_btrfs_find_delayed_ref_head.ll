; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_find_delayed_ref_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_find_delayed_ref_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_head = type { i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_delayed_ref_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_delayed_ref_head* @btrfs_find_delayed_ref_head(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %7 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %11, %struct.btrfs_delayed_ref_root** %7, align 8
  %12 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %7, align 8
  %13 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.btrfs_delayed_ref_node* @find_ref_head(i32* %13, i32 %14, i32* null, i32 0)
  store %struct.btrfs_delayed_ref_node* %15, %struct.btrfs_delayed_ref_node** %6, align 8
  %16 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %17 = icmp ne %struct.btrfs_delayed_ref_node* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %20 = call %struct.btrfs_delayed_ref_head* @btrfs_delayed_node_to_head(%struct.btrfs_delayed_ref_node* %19)
  store %struct.btrfs_delayed_ref_head* %20, %struct.btrfs_delayed_ref_head** %3, align 8
  br label %22

21:                                               ; preds = %2
  store %struct.btrfs_delayed_ref_head* null, %struct.btrfs_delayed_ref_head** %3, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %3, align 8
  ret %struct.btrfs_delayed_ref_head* %23
}

declare dso_local %struct.btrfs_delayed_ref_node* @find_ref_head(i32*, i32, i32*, i32) #1

declare dso_local %struct.btrfs_delayed_ref_head* @btrfs_delayed_node_to_head(%struct.btrfs_delayed_ref_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
