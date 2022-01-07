; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_index_block_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_index_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_search = type { i32 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"find xattr %s, hash = %u, index = %d in xattr tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"find xattr extent rec %u clusters from %llu, the first hash in the rec is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_index_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_index_block_find(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i8* %3, %struct.ocfs2_xattr_search* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ocfs2_xattr_search*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_xattr_block*, align 8
  %14 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.ocfs2_xattr_search* %4, %struct.ocfs2_xattr_search** %11, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %23, %struct.ocfs2_xattr_block** %13, align 8
  %24 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %13, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %26, %struct.ocfs2_xattr_tree_root** %14, align 8
  %27 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %14, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %27, i32 0, i32 0
  store %struct.ocfs2_extent_list* %28, %struct.ocfs2_extent_list** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @ocfs2_xattr_name_hash(%struct.inode* %29, i8* %30, i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %88

42:                                               ; preds = %5
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %51 = call i32 @ocfs2_xattr_get_rec(%struct.inode* %48, i32 %49, i64* %16, i32* %17, i32* %18, %struct.ocfs2_extent_list* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %86

57:                                               ; preds = %42
  %58 = load i64, i64* %16, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp sgt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %60, %57
  %68 = phi i1 [ true, %60 ], [ true, %57 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8* %73, i64 %74, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i64, i64* %16, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %11, align 8
  %85 = call i32 @ocfs2_xattr_bucket_find(%struct.inode* %77, i32 %78, i8* %79, i32 %80, i64 %81, i32 %82, i32 %83, %struct.ocfs2_xattr_search* %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %67, %54
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %39
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @ocfs2_xattr_name_hash(%struct.inode*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @ocfs2_xattr_get_rec(%struct.inode*, i32, i64*, i32*, i32*, %struct.ocfs2_extent_list*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_find(%struct.inode*, i32, i8*, i32, i64, i32, i32, %struct.ocfs2_xattr_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
