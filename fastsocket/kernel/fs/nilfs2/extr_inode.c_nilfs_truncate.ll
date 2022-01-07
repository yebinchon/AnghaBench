; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.nilfs_transaction_info = type { i32 }
%struct.nilfs_inode_info = type { i32 }

@NILFS_I_BMAP = common dso_local global i32 0, align 4
@nilfs_get_block = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@NILFS_TI_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_transaction_info, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 4
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %11)
  store %struct.nilfs_inode_info* %12, %struct.nilfs_inode_info** %7, align 8
  %13 = load i32, i32* @NILFS_I_BMAP, align 4
  %14 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %15 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %74

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i64 @IS_APPEND(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i64 @IS_IMMUTABLE(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  br label %74

28:                                               ; preds = %23
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %34, %35
  %37 = sub i32 %36, 1
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = lshr i32 %37, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %3, align 8
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = call i32 @nilfs_transaction_begin(%struct.super_block* %43, %struct.nilfs_transaction_info* %5, i32 0)
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @nilfs_get_block, align 4
  %52 = call i32 @block_truncate_page(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info* %53, i64 %54)
  %56 = load i32, i32* @CURRENT_TIME, align 4
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = call i64 @IS_SYNC(%struct.inode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %28
  %65 = load i32, i32* @NILFS_TI_SYNC, align 4
  %66 = call i32 @nilfs_set_transaction_flag(i32 %65)
  br label %67

67:                                               ; preds = %64, %28
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = call i32 @NILFS_SB(%struct.super_block* %68)
  %70 = load %struct.inode*, %struct.inode** %2, align 8
  %71 = call i32 @nilfs_set_file_dirty(i32 %69, %struct.inode* %70, i32 0)
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = call i32 @nilfs_transaction_commit(%struct.super_block* %72)
  br label %74

74:                                               ; preds = %67, %27, %18
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @block_truncate_page(i32, i32, i32) #1

declare dso_local i32 @nilfs_truncate_bmap(%struct.nilfs_inode_info*, i64) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @nilfs_set_transaction_flag(i32) #1

declare dso_local i32 @nilfs_set_file_dirty(i32, %struct.inode*, i32) #1

declare dso_local i32 @NILFS_SB(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
