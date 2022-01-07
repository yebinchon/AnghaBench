; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_add_new_xattr_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32, i32* }
%struct.ocfs2_super = type { i64, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [87 x i8] c"Add new xattr cluster for %llu, previous xattr hash = %u, previous xattr blkno = %llu\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Allocating %u clusters at block %u for xattr in inode %llu\0A\00", align 1
@OCFS2_MAX_XATTR_TREE_LEAF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Add contiguous %u clusters to previous extent rec.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Insert %u clusters at block %llu for xattr at %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i32*, i32, i32*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_add_new_xattr_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_add_new_xattr_cluster(%struct.inode* %0, %struct.buffer_head* %1, %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket* %3, i32* %4, i32 %5, i32* %6, %struct.ocfs2_xattr_set_ctxt* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %12 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.ocfs2_super*, align 8
  %27 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %11, align 8
  store %struct.ocfs2_xattr_bucket* %3, %struct.ocfs2_xattr_bucket** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.ocfs2_xattr_set_ctxt* %7, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ocfs2_clusters_to_blocks(i32 %30, i32 1)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %18, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %35 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %25, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ocfs2_super* @OCFS2_SB(i32 %40)
  store %struct.ocfs2_super* %41, %struct.ocfs2_super** %26, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %49 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %48)
  %50 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i64 %49)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i32 @INODE_CACHE(%struct.inode* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = call i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree* %27, i32 %52, %struct.buffer_head* %53)
  %55 = load i32*, i32** %25, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @INODE_CACHE(%struct.inode* %56)
  %58 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %59 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %60 = call i32 @ocfs2_journal_access_xb(i32* %55, i32 %57, %struct.buffer_head* %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %178

66:                                               ; preds = %8
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %68 = load i32*, i32** %25, align 8
  %69 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @__ocfs2_claim_clusters(%struct.ocfs2_super* %67, i32* %68, i32 %71, i32 1, i32 %72, i32* %21, i32* %22)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %178

85:                                               ; preds = %66
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp sgt i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %92 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %21, align 4
  %95 = call i8* @ocfs2_clusters_to_blocks(i32 %93, i32 %94)
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* %24, align 8
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98, i64 %102)
  %104 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %105 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %104)
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load i64, i64* %24, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %85
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.ocfs2_super*, %struct.ocfs2_super** %26, align 8
  %118 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @OCFS2_MAX_XATTR_TREE_LEAF_SIZE, align 8
  %124 = icmp sle i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %113
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %22, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32*, i32** %13, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %22, align 4
  %134 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %150

135:                                              ; preds = %113, %85
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = load i32*, i32** %25, align 8
  %138 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %139 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i32, i32* %19, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @ocfs2_adjust_xattr_cross_cluster(%struct.inode* %136, i32* %137, %struct.ocfs2_xattr_bucket* %138, %struct.ocfs2_xattr_bucket* %139, i64 %140, i32 %141, i32* %23, i32* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %135
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %178

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %125
  %151 = load i32, i32* %22, align 4
  %152 = load i64, i64* %24, align 8
  %153 = load i32, i32* %23, align 4
  %154 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %151, i64 %152, i32 %153)
  %155 = load i32*, i32** %25, align 8
  %156 = load i32, i32* %23, align 4
  %157 = load i64, i64* %24, align 8
  %158 = load i32, i32* %22, align 4
  %159 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %16, align 8
  %160 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ocfs2_insert_extent(i32* %155, %struct.ocfs2_extent_tree* %27, i32 %156, i64 %157, i32 %158, i32 0, i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %178

168:                                              ; preds = %150
  %169 = load i32*, i32** %25, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %171 = call i32 @ocfs2_journal_dirty(i32* %169, %struct.buffer_head* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @mlog_errno(i32 %175)
  br label %177

177:                                              ; preds = %174, %168
  br label %178

178:                                              ; preds = %177, %165, %146, %84, %63
  %179 = load i32, i32* %17, align 4
  ret i32 %179
}

declare dso_local i8* @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @__ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_adjust_xattr_cross_cluster(%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i64, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_insert_extent(i32*, %struct.ocfs2_extent_tree*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
