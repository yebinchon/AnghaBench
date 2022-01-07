; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_remove_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_remove_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i32 }

@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@OCFS2_DELETE_INODE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*)* @ocfs2_remove_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_inode(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocfs2_super* @OCFS2_SB(i32 %17)
  store %struct.ocfs2_super* %18, %struct.ocfs2_super** %13, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %22, %struct.ocfs2_dinode** %14, align 8
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %24 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %23, i32 %24, i32 %28)
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %144

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i32 @ocfs2_inode_lock(%struct.inode* %41, %struct.buffer_head** %11, i32 1)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %144

51:                                               ; preds = %37
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %53 = load i64, i64* @OCFS2_DELETE_INODE_CREDITS, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ocfs2_quota_trans_credits(i32 %56)
  %58 = add nsw i64 %53, %57
  %59 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %52, i64 %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %136

68:                                               ; preds = %51
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %74 = call i32 @ocfs2_orphan_del(%struct.ocfs2_super* %69, i32* %70, %struct.inode* %71, %struct.inode* %72, %struct.buffer_head* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %132

80:                                               ; preds = %68
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call i32 @INODE_CACHE(%struct.inode* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %85 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %86 = call i32 @ocfs2_journal_access_di(i32* %81, i32 %83, %struct.buffer_head* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %132

92:                                               ; preds = %80
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CURRENT_TIME, i32 0, i32 0), align 4
  %94 = call i32 @cpu_to_le64(i32 %93)
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @OCFS2_VALID_FL, align 4
  %98 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = call i32 @cpu_to_le32(i32 %100)
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = call i32 @ocfs2_journal_dirty(i32* %106, %struct.buffer_head* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %132

114:                                              ; preds = %92
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = call i32 @INODE_CACHE(%struct.inode* %115)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %118 = call i32 @ocfs2_remove_from_cache(i32 %116, %struct.buffer_head* %117)
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = call i32 @vfs_dq_free_inode(%struct.inode* %119)
  %121 = load i32*, i32** %12, align 8
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %125 = call i32 @ocfs2_free_dinode(i32* %121, %struct.inode* %122, %struct.buffer_head* %123, %struct.ocfs2_dinode* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %114
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %131

131:                                              ; preds = %128, %114
  br label %132

132:                                              ; preds = %131, %111, %89, %77
  %133 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %133, i32* %134)
  br label %136

136:                                              ; preds = %132, %63
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = call i32 @ocfs2_inode_unlock(%struct.inode* %137, i32 1)
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %136, %45, %32
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = call i32 @iput(%struct.inode* %145)
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i64) #1

declare dso_local i64 @ocfs2_quota_trans_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_orphan_del(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_from_cache(i32, %struct.buffer_head*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_dinode(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
