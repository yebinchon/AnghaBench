; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_create_xattr_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_create_xattr_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i8* }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_xattr_block = type { i8*, %struct.TYPE_6__, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { %struct.TYPE_7__, i64, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i64 }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_XATTR_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32)* @ocfs2_create_xattr_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_xattr_block(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_alloc_context* %3, %struct.buffer_head** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_xattr_block*, align 8
  %21 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_8__* %28)
  store %struct.ocfs2_super* %29, %struct.ocfs2_super** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @INODE_CACHE(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %34 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %35 = call i32 @ocfs2_journal_access_di(i32* %30, i32 %32, %struct.buffer_head* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %157

41:                                               ; preds = %6
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %45 = call i32 @ocfs2_claim_metadata(%struct.ocfs2_super* %42, i32* %43, %struct.ocfs2_alloc_context* %44, i32 1, i32* %14, i32* %15, i32* %16)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %157

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_8__* %54, i32 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %19, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @INODE_CACHE(%struct.inode* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %60 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %58, %struct.buffer_head* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call i32 @INODE_CACHE(%struct.inode* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %65 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %66 = call i32 @ocfs2_journal_access_xb(i32* %61, i32 %63, %struct.buffer_head* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %157

72:                                               ; preds = %51
  %73 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %76, %struct.ocfs2_xattr_block** %20, align 8
  %77 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memset(%struct.ocfs2_xattr_block* %77, i32 0, i32 %82)
  %84 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %85 = bitcast %struct.ocfs2_xattr_block* %84 to i8*
  %86 = load i32, i32* @OCFS2_XATTR_BLOCK_SIGNATURE, align 4
  %87 = call i32 @strcpy(i8* %85, i32 %86)
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %89 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %97 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %103 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i8* @cpu_to_le64(i32 %104)
  %106 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %107 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %72
  %111 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %112 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %113, %struct.ocfs2_xattr_tree_root** %21, align 8
  %114 = call i8* @cpu_to_le32(i32 1)
  %115 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %21, align 8
  %116 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %21, align 8
  %118 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %21, align 8
  %120 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @ocfs2_xattr_recs_per_xb(%struct.TYPE_8__* %124)
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %21, align 8
  %128 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = call i8* @cpu_to_le16(i32 1)
  %131 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %21, align 8
  %132 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %20, align 8
  %137 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %110, %72
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %141 = call i32 @ocfs2_journal_dirty(i32* %139, %struct.buffer_head* %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @mlog_errno(i32 %145)
  br label %157

147:                                              ; preds = %138
  %148 = load i32, i32* %16, align 4
  %149 = call i8* @cpu_to_le64(i32 %148)
  %150 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %151 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %154 = call i32 @ocfs2_journal_dirty(i32* %152, %struct.buffer_head* %153)
  %155 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %156 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %155, %struct.buffer_head** %156, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  br label %157

157:                                              ; preds = %147, %144, %69, %48, %38
  %158 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %159 = call i32 @brelse(%struct.buffer_head* %158)
  %160 = load i32, i32* %13, align 4
  ret i32 %160
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_claim_metadata(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_block*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_xattr_recs_per_xb(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
