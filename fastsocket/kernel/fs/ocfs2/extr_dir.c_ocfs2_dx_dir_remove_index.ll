; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_remove_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_remove_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_dx_root_block = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_DX_ROOT_REMOVE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INDEXED_DIR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.buffer_head*)* @ocfs2_dx_dir_remove_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_remove_index(%struct.inode* %0, %struct.buffer_head* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dx_root_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %9, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %28, %struct.ocfs2_dx_root_block** %10, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %30 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %31 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %29, i32 %30, i32 %34)
  store %struct.inode* %35, %struct.inode** %11, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %135

43:                                               ; preds = %3
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call i32 @ocfs2_inode_lock(%struct.inode* %47, %struct.buffer_head** %12, i32 1)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %129

54:                                               ; preds = %43
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %56 = load i32, i32* @OCFS2_DX_ROOT_REMOVE_CREDITS, align 4
  %57 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %55, i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %126

66:                                               ; preds = %54
  %67 = load i32*, i32** %13, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call i32 @INODE_CACHE(%struct.inode* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %71 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %72 = call i32 @ocfs2_journal_access_di(i32* %67, i32 %69, %struct.buffer_head* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %122

78:                                               ; preds = %66
  %79 = load i32, i32* @OCFS2_INDEXED_DIR_FL, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cpu_to_le16(i32 %89)
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %92 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = call i32 @cpu_to_le64(i64 0)
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %98 = call i32 @ocfs2_journal_dirty(i32* %96, %struct.buffer_head* %97)
  %99 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %100 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le64_to_cpu(i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %104 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @ocfs2_which_suballoc_group(i32 %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @ocfs2_free_suballoc_bits(i32* %110, %struct.inode* %111, %struct.buffer_head* %112, i32 %113, i32 %114, i32 1)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %78
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %121

121:                                              ; preds = %118, %78
  br label %122

122:                                              ; preds = %121, %75
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %123, i32* %124)
  br label %126

126:                                              ; preds = %122, %61
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = call i32 @ocfs2_inode_unlock(%struct.inode* %127, i32 1)
  br label %129

129:                                              ; preds = %126, %51
  %130 = load %struct.inode*, %struct.inode** %11, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  br label %135

135:                                              ; preds = %129, %38
  %136 = load %struct.inode*, %struct.inode** %11, align 8
  %137 = call i32 @iput(%struct.inode* %136)
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
