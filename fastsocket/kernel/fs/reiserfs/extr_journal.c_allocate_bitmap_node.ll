; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_allocate_bitmap_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_allocate_bitmap_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_bitmap_node = type { i32, i32, i32 }
%struct.super_block = type { i32 }

@allocate_bitmap_node.id = internal global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_bitmap_node* (%struct.super_block*)* @allocate_bitmap_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_bitmap_node* @allocate_bitmap_node(%struct.super_block* %0) #0 {
  %2 = alloca %struct.reiserfs_bitmap_node*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_bitmap_node*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_NOFS, align 4
  %6 = call %struct.reiserfs_bitmap_node* @kmalloc(i32 12, i32 %5)
  store %struct.reiserfs_bitmap_node* %6, %struct.reiserfs_bitmap_node** %4, align 8
  %7 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %8 = icmp ne %struct.reiserfs_bitmap_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.reiserfs_bitmap_node* null, %struct.reiserfs_bitmap_node** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call i32 @kzalloc(i32 %13, i32 %14)
  %16 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %17 = getelementptr inbounds %struct.reiserfs_bitmap_node, %struct.reiserfs_bitmap_node* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %19 = getelementptr inbounds %struct.reiserfs_bitmap_node, %struct.reiserfs_bitmap_node* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %24 = call i32 @kfree(%struct.reiserfs_bitmap_node* %23)
  store %struct.reiserfs_bitmap_node* null, %struct.reiserfs_bitmap_node** %2, align 8
  br label %34

25:                                               ; preds = %10
  %26 = load i32, i32* @allocate_bitmap_node.id, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @allocate_bitmap_node.id, align 4
  %28 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_bitmap_node, %struct.reiserfs_bitmap_node* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  %31 = getelementptr inbounds %struct.reiserfs_bitmap_node, %struct.reiserfs_bitmap_node* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %4, align 8
  store %struct.reiserfs_bitmap_node* %33, %struct.reiserfs_bitmap_node** %2, align 8
  br label %34

34:                                               ; preds = %25, %22, %9
  %35 = load %struct.reiserfs_bitmap_node*, %struct.reiserfs_bitmap_node** %2, align 8
  ret %struct.reiserfs_bitmap_node* %35
}

declare dso_local %struct.reiserfs_bitmap_node* @kmalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.reiserfs_bitmap_node*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
