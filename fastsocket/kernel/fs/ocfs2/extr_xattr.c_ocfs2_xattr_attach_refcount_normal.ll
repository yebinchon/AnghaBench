; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_attach_refcount_normal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_attach_refcount_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.ocfs2_xattr_value_root* }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i32, i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_xattr_attach_refcount_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_attach_refcount_normal(%struct.inode* %0, %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_header* %2, %struct.ocfs2_caching_info* %3, %struct.buffer_head* %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %9 = alloca %struct.ocfs2_xattr_header*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca %struct.ocfs2_xattr_entry*, align 8
  %14 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %15 = alloca %struct.ocfs2_extent_tree, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %8, align 8
  store %struct.ocfs2_xattr_header* %2, %struct.ocfs2_xattr_header** %9, align 8
  store %struct.ocfs2_caching_info* %3, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %71, %6
  %19 = load i32, i32* %16, align 4
  %20 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %18
  %26 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %26, i32 0, i32 0
  %28 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %27, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %28, i64 %30
  store %struct.ocfs2_xattr_entry* %31, %struct.ocfs2_xattr_entry** %13, align 8
  %32 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %13, align 8
  %33 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %71

36:                                               ; preds = %25
  %37 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %38 = bitcast %struct.ocfs2_xattr_header* %37 to i8*
  %39 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %13, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %38, i64 %43
  %45 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @OCFS2_XATTR_SIZE(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %44, i64 %49
  %51 = bitcast i8* %50 to %struct.ocfs2_xattr_value_root*
  store %struct.ocfs2_xattr_value_root* %51, %struct.ocfs2_xattr_value_root** %14, align 8
  %52 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %14, align 8
  %53 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %8, align 8
  %54 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %53, i32 0, i32 0
  store %struct.ocfs2_xattr_value_root* %52, %struct.ocfs2_xattr_value_root** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i32 @INODE_CACHE(%struct.inode* %55)
  %57 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %8, align 8
  %58 = call i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %15, i32 %56, %struct.ocfs2_xattr_value_buf* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %14, align 8
  %61 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %63 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %64 = call i32 @ocfs2_xattr_value_attach_refcount(%struct.inode* %59, %struct.ocfs2_xattr_value_root* %60, %struct.ocfs2_extent_tree* %15, %struct.ocfs2_caching_info* %61, %struct.buffer_head* %62, %struct.ocfs2_cached_dealloc_ctxt* %63, i32* null)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %36
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %74

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %18

74:                                               ; preds = %67, %18
  %75 = load i32, i32* %17, align 4
  ret i32 %75
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_value_attach_refcount(%struct.inode*, %struct.ocfs2_xattr_value_root*, %struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
