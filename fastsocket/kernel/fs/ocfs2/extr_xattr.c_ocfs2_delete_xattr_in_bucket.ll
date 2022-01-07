; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_delete_xattr_in_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_delete_xattr_in_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32*, i32, i32*, i32* }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_rm_xattr_bucket_para = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_delete_xattr_in_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_delete_xattr_in_bucket(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_xattr_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_xattr_entry*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %16 = alloca %struct.ocfs2_rm_xattr_bucket_para*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %18 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %17)
  store %struct.ocfs2_xattr_header* %18, %struct.ocfs2_xattr_header** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %12, align 8
  %23 = bitcast %struct.ocfs2_xattr_set_ctxt* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ocfs2_remove_extent_credits(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %30)
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.ocfs2_rm_xattr_bucket_para*
  store %struct.ocfs2_rm_xattr_bucket_para* %34, %struct.ocfs2_rm_xattr_bucket_para** %16, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 0
  %36 = call i32 @ocfs2_init_dealloc_ctxt(i32* %35)
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %111, %3
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %45, i32 0, i32 0
  %47 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %47, i64 %48
  store %struct.ocfs2_xattr_entry* %49, %struct.ocfs2_xattr_entry** %11, align 8
  %50 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %11, align 8
  %51 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %111

54:                                               ; preds = %44
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @ocfs2_get_xattr_tree_value_root(i32 %57, %struct.ocfs2_xattr_bucket* %58, i64 %59, %struct.ocfs2_xattr_value_root** %15, i32* null)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %15, align 8
  %63 = load %struct.ocfs2_rm_xattr_bucket_para*, %struct.ocfs2_rm_xattr_bucket_para** %16, align 8
  %64 = getelementptr inbounds %struct.ocfs2_rm_xattr_bucket_para, %struct.ocfs2_rm_xattr_bucket_para* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocfs2_rm_xattr_bucket_para*, %struct.ocfs2_rm_xattr_bucket_para** %16, align 8
  %67 = getelementptr inbounds %struct.ocfs2_rm_xattr_bucket_para, %struct.ocfs2_rm_xattr_bucket_para* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %70 = call i32 @ocfs2_lock_xattr_remove_allocators(%struct.inode* %61, %struct.ocfs2_xattr_value_root* %62, i32 %65, i32 %68, i32** %69, i32* %8)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @ocfs2_start_trans(%struct.ocfs2_super* %71, i32 %74)
  %76 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %54
  %82 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %114

87:                                               ; preds = %54
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @ocfs2_xattr_bucket_value_truncate(%struct.inode* %88, %struct.ocfs2_xattr_bucket* %89, i64 %90, i32 0, %struct.ocfs2_xattr_set_ctxt* %13)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %92, i32 %94)
  %96 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ocfs2_free_alloc_context(i32* %101)
  %103 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %99, %87
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %114

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %53
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %37

114:                                              ; preds = %107, %81, %37
  %115 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @ocfs2_free_alloc_context(i32* %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %124 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %123, i32 1)
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %126 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %13, i32 0, i32 0
  %127 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %125, i32* %126)
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_get_xattr_tree_value_root(i32, %struct.ocfs2_xattr_bucket*, i64, %struct.ocfs2_xattr_value_root**, i32*) #1

declare dso_local i32 @ocfs2_lock_xattr_remove_allocators(%struct.inode*, %struct.ocfs2_xattr_value_root*, i32, i32, i32**, i32*) #1

declare dso_local i32 @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_value_truncate(%struct.inode*, %struct.ocfs2_xattr_bucket*, i64, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
