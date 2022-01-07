; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_extend_allocation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_extend_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, i32, i32)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32, i32* }
%struct.ocfs2_extent_tree = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"(clusters_to_add for xattr= %u)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@RESTART_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_extend_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_extend_allocation(%struct.inode* %0, i64 %1, %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ocfs2_xattr_value_buf* %2, %struct.ocfs2_xattr_value_buf** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @INODE_CACHE(%struct.inode* %26)
  %28 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %29 = call i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %14, i32 %27, %struct.ocfs2_xattr_value_buf* %28)
  %30 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %30, i32 0, i32 0
  %32 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @INODE_CACHE(%struct.inode* %34)
  %36 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %40 = call i32 %32(i32* %33, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %99

46:                                               ; preds = %4
  %47 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le32_to_cpu(i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocfs2_add_clusters_in_btree(i32* %53, %struct.ocfs2_extent_tree* %14, i64* %13, i64 %54, i32 0, i32 %57, i32 %60, i32* %11)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %99

67:                                               ; preds = %46
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ocfs2_journal_dirty(i32* %68, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %99

78:                                               ; preds = %67
  %79 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = load i64, i64* %12, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @RESTART_NONE, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %78
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %92, %78
  %96 = phi i1 [ true, %78 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  br label %99

99:                                               ; preds = %95, %75, %64, %43
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_add_clusters_in_btree(i32*, %struct.ocfs2_extent_tree*, i64*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
