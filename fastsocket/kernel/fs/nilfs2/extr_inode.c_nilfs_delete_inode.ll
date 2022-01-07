; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__, %struct.super_block* }
%struct.TYPE_2__ = type { i64 }
%struct.super_block = type { i32 }
%struct.nilfs_transaction_info = type { i32 }
%struct.nilfs_inode_info = type { i32 }

@NILFS_TI_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_transaction_info, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %9)
  store %struct.nilfs_inode_info* %10, %struct.nilfs_inode_info** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call i32 @is_bad_inode(%struct.inode* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @truncate_inode_pages(%struct.TYPE_2__* %23, i32 0)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @clear_inode(%struct.inode* %26)
  br label %54

28:                                               ; preds = %1
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = call i32 @nilfs_transaction_begin(%struct.super_block* %29, %struct.nilfs_transaction_info* %3, i32 0)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = call i32 @truncate_inode_pages(%struct.TYPE_2__* %38, i32 0)
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %5, align 8
  %42 = call i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info* %41, i32 0)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call i32 @nilfs_free_inode(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call i64 @IS_SYNC(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @NILFS_TI_SYNC, align 4
  %50 = call i32 @nilfs_set_transaction_flag(i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = call i32 @nilfs_transaction_commit(%struct.super_block* %52)
  br label %54

54:                                               ; preds = %51, %25
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info*, i32) #1

declare dso_local i32 @nilfs_free_inode(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @nilfs_set_transaction_flag(i32) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
