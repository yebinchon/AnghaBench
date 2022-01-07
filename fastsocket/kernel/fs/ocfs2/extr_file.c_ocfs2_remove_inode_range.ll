; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_remove_inode_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_remove_inode_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space*, i32 }
%struct.address_space = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Inode: %llu, start: %llu, len: %llu, cstart: %u, clen: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64)* @ocfs2_remove_inode_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_inode_range(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %18 = alloca %struct.address_space*, align 8
  %19 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %16, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.address_space*, %struct.address_space** %25, align 8
  store %struct.address_space* %26, %struct.address_space** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @INODE_CACHE(%struct.inode* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %19, i32 %28, %struct.buffer_head* %29)
  %31 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %17)
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %157

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ocfs2_truncate_inline(%struct.inode* %44, %struct.buffer_head* %45, i64 %46, i32 %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %151

57:                                               ; preds = %43
  %58 = load %struct.address_space*, %struct.address_space** %18, align 8
  %59 = call i32 @unmap_mapping_range(%struct.address_space* %58, i32 0, i32 0, i32 0)
  %60 = load %struct.address_space*, %struct.address_space** %18, align 8
  %61 = call i32 @truncate_inode_pages(%struct.address_space* %60, i32 0)
  br label %151

62:                                               ; preds = %35
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ocfs2_clusters_for_bytes(i32 %65, i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %72 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = ashr i64 %70, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %62
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %85

84:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %90, i64 %91, i32 %92, i32 %93)
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @ocfs2_zero_partial_clusters(%struct.inode* %95, i64 %96, i64 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %151

104:                                              ; preds = %85
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %139, %104
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %106
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @ocfs2_get_clusters(%struct.inode* %110, i32 %111, i32* %14, i32* %15, i32* null)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %151

118:                                              ; preds = %109
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @ocfs2_remove_btree_range(%struct.inode* %128, %struct.ocfs2_extent_tree* %19, i32 %129, i32 %130, i32 %131, %struct.ocfs2_cached_dealloc_ctxt* %17)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %151

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %124
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %106

146:                                              ; preds = %106
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @ocfs2_truncate_cluster_pages(%struct.inode* %147, i64 %148, i64 %149)
  br label %151

151:                                              ; preds = %146, %135, %115, %101, %57, %54
  %152 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %153 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %152, i32 1)
  %154 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %155 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %154, %struct.ocfs2_cached_dealloc_ctxt* %17)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %34
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_truncate_inline(%struct.inode*, %struct.buffer_head*, i64, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i64) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ocfs2_zero_partial_clusters(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ocfs2_remove_btree_range(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_truncate_cluster_pages(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
