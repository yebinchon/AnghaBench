; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_value_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_xattr_tree_value_refcount_para = type { i32, i32, i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32, i32, i32 }
%struct.ocfs2_post_refcount = type { i32, %struct.ocfs2_xattr_bucket*, i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@ocfs2_xattr_bucket_post_refcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"refcount bucket %llu, count = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_xattr_bucket_value_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_value_refcount(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_extent_tree, align 4
  %10 = alloca %struct.ocfs2_xattr_tree_value_refcount_para*, align 8
  %11 = alloca %struct.ocfs2_xattr_header*, align 8
  %12 = alloca %struct.ocfs2_xattr_entry*, align 8
  %13 = alloca %struct.ocfs2_xattr_value_buf, align 4
  %14 = alloca %struct.ocfs2_post_refcount, align 8
  %15 = alloca %struct.ocfs2_post_refcount*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ocfs2_xattr_tree_value_refcount_para*
  store %struct.ocfs2_xattr_tree_value_refcount_para* %17, %struct.ocfs2_xattr_tree_value_refcount_para** %10, align 8
  %18 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %25, %struct.ocfs2_xattr_header** %11, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 2
  %29 = load i32, i32* @ocfs2_journal_access, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %14, i32 0, i32 0
  %31 = load i32, i32* @ocfs2_xattr_bucket_post_refcount, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %14, i32 0, i32 1
  %33 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  store %struct.ocfs2_xattr_bucket* %33, %struct.ocfs2_xattr_bucket** %32, align 8
  %34 = getelementptr inbounds %struct.ocfs2_post_refcount, %struct.ocfs2_post_refcount* %14, i32 0, i32 2
  %35 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 8
  store %struct.ocfs2_post_refcount* null, %struct.ocfs2_post_refcount** %15, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OCFS2_SB(i32 %40)
  %42 = call i64 @ocfs2_meta_ecc(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store %struct.ocfs2_post_refcount* %14, %struct.ocfs2_post_refcount** %15, align 8
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %47 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %46)
  %48 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %11, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %109, %45
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %11, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %53
  %61 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %11, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %61, i32 0, i32 0
  %63 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %63, i64 %65
  store %struct.ocfs2_xattr_entry* %66, %struct.ocfs2_xattr_entry** %12, align 8
  %67 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %12, align 8
  %68 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %109

71:                                               ; preds = %60
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 1
  %79 = call i32 @ocfs2_get_xattr_tree_value_root(i32 %74, %struct.ocfs2_xattr_bucket* %75, i32 %76, i32* %77, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %112

85:                                               ; preds = %71
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = call i32 @INODE_CACHE(%struct.inode* %86)
  %88 = call i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %9, i32 %87, %struct.ocfs2_xattr_value_buf* %13)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ocfs2_xattr_tree_value_refcount_para*, %struct.ocfs2_xattr_tree_value_refcount_para** %10, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ocfs2_xattr_tree_value_refcount_para*, %struct.ocfs2_xattr_tree_value_refcount_para** %10, align 8
  %96 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ocfs2_xattr_tree_value_refcount_para*, %struct.ocfs2_xattr_tree_value_refcount_para** %10, align 8
  %99 = getelementptr inbounds %struct.ocfs2_xattr_tree_value_refcount_para, %struct.ocfs2_xattr_tree_value_refcount_para* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ocfs2_post_refcount*, %struct.ocfs2_post_refcount** %15, align 8
  %102 = call i32 @ocfs2_xattr_value_attach_refcount(%struct.inode* %89, i32 %91, %struct.ocfs2_extent_tree* %9, i32 %94, i32 %97, i32 %100, %struct.ocfs2_post_refcount* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %85
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %112

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108, %70
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %53

112:                                              ; preds = %105, %82, %53
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i64 @ocfs2_meta_ecc(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_get_xattr_tree_value_root(i32, %struct.ocfs2_xattr_bucket*, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_value_attach_refcount(%struct.inode*, i32, %struct.ocfs2_extent_tree*, i32, i32, i32, %struct.ocfs2_post_refcount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
