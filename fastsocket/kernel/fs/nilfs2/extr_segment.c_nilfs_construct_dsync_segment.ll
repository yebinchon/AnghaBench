; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_construct_dsync_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_construct_dsync_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_sb_info = type { i32, i32 }
%struct.nilfs_sc_info = type { i8*, i8*, %struct.nilfs_inode_info*, i32 }
%struct.nilfs_inode_info = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@NILFS_I_INODE_DIRTY = common dso_local global i32 0, align 4
@STRICT_ORDER = common dso_local global i32 0, align 4
@NILFS_SC_UNCLOSED = common dso_local global i32 0, align 4
@NILFS_I_QUEUED = common dso_local global i32 0, align 4
@NILFS_I_BUSY = common dso_local global i32 0, align 4
@SC_LSEG_DSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_construct_dsync_segment(%struct.super_block* %0, %struct.inode* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nilfs_sb_info*, align 8
  %11 = alloca %struct.nilfs_sc_info*, align 8
  %12 = alloca %struct.nilfs_inode_info*, align 8
  %13 = alloca %struct.nilfs_transaction_info, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %15)
  store %struct.nilfs_sb_info* %16, %struct.nilfs_sb_info** %10, align 8
  %17 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %18 = call %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info* %17)
  store %struct.nilfs_sc_info* %18, %struct.nilfs_sc_info** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %20 = icmp ne %struct.nilfs_sc_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EROFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %97

24:                                               ; preds = %4
  %25 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %26 = call i32 @nilfs_transaction_lock(%struct.nilfs_sb_info* %25, %struct.nilfs_transaction_info* %13, i32 0)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %27)
  store %struct.nilfs_inode_info* %28, %struct.nilfs_inode_info** %12, align 8
  %29 = load i32, i32* @NILFS_I_INODE_DIRTY, align 4
  %30 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %31 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %24
  %35 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %36 = load i32, i32* @STRICT_ORDER, align 4
  %37 = call i64 @nilfs_test_opt(%struct.nilfs_sb_info* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @NILFS_SC_UNCLOSED, align 4
  %41 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %42 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %41, i32 0, i32 3
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %47 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nilfs_discontinued(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45, %39, %34, %24
  %52 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %53 = call i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info* %52)
  %54 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %55 = call i32 @nilfs_segctor_sync(%struct.nilfs_sc_info* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %97

57:                                               ; preds = %45
  %58 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %59 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* @NILFS_I_QUEUED, align 4
  %62 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %63 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %62, i32 0, i32 0
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @NILFS_I_BUSY, align 4
  %68 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %69 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %74 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %77 = call i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info* %76)
  store i32 0, i32* %5, align 4
  br label %97

78:                                               ; preds = %66, %57
  %79 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %80 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %12, align 8
  %83 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %84 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %83, i32 0, i32 2
  store %struct.nilfs_inode_info* %82, %struct.nilfs_inode_info** %84, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %87 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %90 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %11, align 8
  %92 = load i32, i32* @SC_LSEG_DSYNC, align 4
  %93 = call i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info* %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %95 = call i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %78, %72, %51, %21
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.nilfs_sc_info* @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_transaction_lock(%struct.nilfs_sb_info*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nilfs_test_opt(%struct.nilfs_sb_info*, i32) #1

declare dso_local i64 @nilfs_discontinued(i32) #1

declare dso_local i32 @nilfs_transaction_unlock(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_segctor_sync(%struct.nilfs_sc_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_segctor_do_construct(%struct.nilfs_sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
