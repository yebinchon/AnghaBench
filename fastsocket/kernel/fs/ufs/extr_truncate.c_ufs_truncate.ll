; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { i32 }
%struct.ufs_sb_private_info = type { i64 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [48 x i8] c"ENTER: ino %lu, i_size: %llu, old_i_size: %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ufs_getfrag_block = common dso_local global i32 0, align 4
@UFS_IND_BLOCK = common dso_local global i64 0, align 8
@UFS_DIND_BLOCK = common dso_local global i64 0, align 8
@I_DIRTY = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@DIRECT_FRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"EXIT: err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_truncate(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %11)
  store %struct.ufs_inode_info* %12, %struct.ufs_inode_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 7
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  store %struct.ufs_sb_private_info* %19, %struct.ufs_sb_private_info** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i64 @i_size_read(%struct.inode* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %24, i64 %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISREG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISLNK(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %145

47:                                               ; preds = %38, %32, %2
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call i64 @IS_APPEND(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i64 @IS_IMMUTABLE(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %145

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i32 @ufs_alloc_lastblock(%struct.inode* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @i_size_write(%struct.inode* %64, i64 %65)
  br label %141

67:                                               ; preds = %58
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ufs_getfrag_block, align 4
  %75 = call i32 @block_truncate_page(i32 %70, i32 %73, i32 %74)
  %76 = call i32 (...) @lock_kernel()
  br label %77

77:                                               ; preds = %67, %123
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i32 @ufs_trunc_direct(%struct.inode* %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load i64, i64* @UFS_IND_BLOCK, align 8
  %82 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %83 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %84 = load i64, i64* @UFS_IND_BLOCK, align 8
  %85 = call i32 @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %82, %struct.ufs_inode_info* %83, i64 %84)
  %86 = call i32 @ufs_trunc_indirect(%struct.inode* %80, i64 %81, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = load i64, i64* @UFS_IND_BLOCK, align 8
  %91 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %92 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %96 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %97 = load i64, i64* @UFS_DIND_BLOCK, align 8
  %98 = call i32 @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %95, %struct.ufs_inode_info* %96, i64 %97)
  %99 = call i32 @ufs_trunc_dindirect(%struct.inode* %89, i64 %94, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = call i32 @ufs_trunc_tindirect(%struct.inode* %102)
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %77
  br label %129

109:                                              ; preds = %77
  %110 = load %struct.inode*, %struct.inode** %4, align 8
  %111 = call i64 @IS_SYNC(%struct.inode* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @I_DIRTY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call i32 @ufs_sync_inode(%struct.inode* %121)
  br label %123

123:                                              ; preds = %120, %113, %109
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @blk_run_address_space(i32 %126)
  %128 = call i32 (...) @yield()
  br label %77

129:                                              ; preds = %108
  %130 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 8
  %135 = load i32, i32* @DIRECT_FRAGMENT, align 4
  %136 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %137 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = call i32 (...) @unlock_kernel()
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = call i32 @mark_inode_dirty(%struct.inode* %139)
  br label %141

141:                                              ; preds = %129, %63
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %55, %44
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, i32, ...) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @ufs_alloc_lastblock(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @block_truncate_page(i32, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ufs_trunc_direct(%struct.inode*) #1

declare dso_local i32 @ufs_trunc_indirect(%struct.inode*, i64, i32) #1

declare dso_local i32 @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i64) #1

declare dso_local i32 @ufs_trunc_dindirect(%struct.inode*, i64, i32) #1

declare dso_local i32 @ufs_trunc_tindirect(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ufs_sync_inode(%struct.inode*) #1

declare dso_local i32 @blk_run_address_space(i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
