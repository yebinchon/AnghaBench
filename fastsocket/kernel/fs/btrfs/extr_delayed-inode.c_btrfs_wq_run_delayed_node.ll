; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_wq_run_delayed_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_btrfs_wq_run_delayed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_root = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_async_delayed_node = type { %struct.TYPE_4__, %struct.btrfs_delayed_node*, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.btrfs_delayed_node = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_async_run_delayed_node_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_root*, %struct.btrfs_root*, i32)* @btrfs_wq_run_delayed_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_delayed_root*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_async_delayed_node*, align 8
  %9 = alloca %struct.btrfs_delayed_node*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_delayed_root* %0, %struct.btrfs_delayed_root** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %5, align 8
  %13 = call %struct.btrfs_delayed_node* @btrfs_first_prepared_delayed_node(%struct.btrfs_delayed_root* %12)
  store %struct.btrfs_delayed_node* %13, %struct.btrfs_delayed_node** %9, align 8
  %14 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %9, align 8
  %15 = icmp ne %struct.btrfs_delayed_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %57

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.btrfs_async_delayed_node* @kmalloc(i32 32, i32 %18)
  store %struct.btrfs_async_delayed_node* %19, %struct.btrfs_async_delayed_node** %8, align 8
  %20 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %21 = icmp ne %struct.btrfs_async_delayed_node* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %9, align 8
  %24 = call i32 @btrfs_release_prepared_delayed_node(%struct.btrfs_delayed_node* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %17
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_async_delayed_node, %struct.btrfs_async_delayed_node* %29, i32 0, i32 2
  store %struct.btrfs_root* %28, %struct.btrfs_root** %30, align 8
  %31 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %9, align 8
  %32 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_async_delayed_node, %struct.btrfs_async_delayed_node* %32, i32 0, i32 1
  store %struct.btrfs_delayed_node* %31, %struct.btrfs_delayed_node** %33, align 8
  %34 = load i32, i32* @btrfs_async_run_delayed_node_done, align 4
  %35 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %36 = getelementptr inbounds %struct.btrfs_async_delayed_node, %struct.btrfs_async_delayed_node* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_async_delayed_node, %struct.btrfs_async_delayed_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.btrfs_async_delayed_node*, %struct.btrfs_async_delayed_node** %8, align 8
  %46 = getelementptr inbounds %struct.btrfs_async_delayed_node, %struct.btrfs_async_delayed_node* %45, i32 0, i32 0
  %47 = call i32 @btrfs_queue_worker(i32* %44, %struct.TYPE_4__* %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %27
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %27
  br label %11

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %22, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_first_prepared_delayed_node(%struct.btrfs_delayed_root*) #1

declare dso_local %struct.btrfs_async_delayed_node* @kmalloc(i32, i32) #1

declare dso_local i32 @btrfs_release_prepared_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
