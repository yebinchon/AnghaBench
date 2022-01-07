; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_attach_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_attach_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_attach_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_attach_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.ocfs2_refcount_tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %19 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ocfs2_super* @OCFS2_SB(i32 %28)
  store %struct.ocfs2_super* %29, %struct.ocfs2_super** %10, align 8
  %30 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %18)
  %31 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %2
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %40 = call i32 @ocfs2_create_refcount_tree(%struct.inode* %38, %struct.buffer_head* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %172

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le64_to_cpu(i32 %58)
  %60 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %55, i32 %59, i32 1, %struct.ocfs2_refcount_tree** %11, %struct.buffer_head** %7)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %172

66:                                               ; preds = %47
  %67 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %68 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %121

74:                                               ; preds = %66
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i32 @INODE_CACHE(%struct.inode* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %78 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %19, i32 %76, %struct.buffer_head* %77)
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = call i32 @i_size_read(%struct.inode* %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @ocfs2_clusters_for_bytes(i32 %83, i32 %84)
  store i64 %85, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %86

86:                                               ; preds = %116, %74
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @ocfs2_get_clusters(%struct.inode* %91, i64 %92, i64* %17, i64* %15, i32* %12)
  store i32 %93, i32* %5, align 4
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %96
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %104 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %103, i32 0, i32 0
  %105 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @ocfs2_add_refcount_flag(%struct.inode* %102, %struct.ocfs2_extent_tree* %19, i32* %104, %struct.buffer_head* %105, i64 %106, i64 %107, i64 %108, %struct.ocfs2_cached_dealloc_ctxt* %18, i32* null)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @mlog_errno(i32 %113)
  br label %155

115:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %96, %90
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %14, align 8
  br label %86

120:                                              ; preds = %86
  br label %121

121:                                              ; preds = %120, %73
  %122 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %123 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load %struct.inode*, %struct.inode** %3, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %131 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %132 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %131, i32 0, i32 0
  %133 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %134 = call i32 @ocfs2_xattr_attach_refcount_tree(%struct.inode* %129, %struct.buffer_head* %130, i32* %132, %struct.buffer_head* %133, %struct.ocfs2_cached_dealloc_ctxt* %18)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %155

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load %struct.inode*, %struct.inode** %3, align 8
  %146 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %147 = call i32 @ocfs2_change_ctime(%struct.inode* %145, %struct.buffer_head* %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @mlog_errno(i32 %151)
  br label %153

153:                                              ; preds = %150, %144
  br label %154

154:                                              ; preds = %153, %141
  br label %155

155:                                              ; preds = %154, %137, %112
  %156 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %157 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %11, align 8
  %158 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %156, %struct.ocfs2_refcount_tree* %157, i32 1)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %155
  %164 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %18)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %168 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %167, i32 1)
  %169 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %170 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %169, %struct.ocfs2_cached_dealloc_ctxt* %18)
  br label %171

171:                                              ; preds = %166, %163, %155
  br label %172

172:                                              ; preds = %171, %63, %43
  %173 = load %struct.inode*, %struct.inode** %3, align 8
  %174 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %173, i32 0)
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_create_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @ocfs2_add_refcount_flag(%struct.inode*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head*, i64, i64, i64, %struct.ocfs2_cached_dealloc_ctxt*, i32*) #1

declare dso_local i32 @ocfs2_xattr_attach_refcount_tree(%struct.inode*, %struct.buffer_head*, i32*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_change_ctime(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
