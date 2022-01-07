; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_set_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_set_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@OCFS2_REFCOUNT_TREE_SET_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32)* @ocfs2_set_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_inode_info*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %32, i32 %33, i32 1, %struct.ocfs2_refcount_tree** %15, %struct.buffer_head** %13)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %123

41:                                               ; preds = %3
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %43 = load i32, i32* @OCFS2_REFCOUNT_TREE_SET_CREDITS, align 4
  %44 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %42, i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %116

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @INODE_CACHE(%struct.inode* %55)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %58 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %59 = call i32 @ocfs2_journal_access_di(i32* %54, i32 %56, %struct.buffer_head* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %112

65:                                               ; preds = %53
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %67, i32 0, i32 0
  %69 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %70 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %71 = call i32 @ocfs2_journal_access_rb(i32* %66, i32* %68, %struct.buffer_head* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %112

77:                                               ; preds = %65
  %78 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %81, %struct.ocfs2_refcount_block** %14, align 8
  %82 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %83 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %82, i32 0, i32 0
  %84 = call i32 @le32_add_cpu(i32* %83, i32 1)
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %87 = call i32 @ocfs2_journal_dirty(i32* %85, %struct.buffer_head* %86)
  %88 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %89 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %88, i32 0, i32 1
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %92 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %93 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %97 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cpu_to_le64(i32 %102)
  %104 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %105 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %11, align 8
  %107 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %111 = call i32 @ocfs2_journal_dirty(i32* %109, %struct.buffer_head* %110)
  br label %112

112:                                              ; preds = %77, %74, %62
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %48
  %117 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %118 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %15, align 8
  %119 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %117, %struct.ocfs2_refcount_tree* %118, i32 1)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %116, %37
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
