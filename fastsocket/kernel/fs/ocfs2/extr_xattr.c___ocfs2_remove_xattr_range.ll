; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c___ocfs2_remove_xattr_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c___ocfs2_remove_xattr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 (i32*, i32, i32, i32)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32, i32* }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_buf*, i32, i32, i32, i32, %struct.ocfs2_xattr_set_ctxt*)* @__ocfs2_remove_xattr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_remove_xattr_range(%struct.inode* %0, %struct.ocfs2_xattr_value_buf* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ocfs2_xattr_set_ctxt* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ocfs2_xattr_set_ctxt* %6, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @ocfs2_clusters_to_blocks(i32 %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %17, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i32 @INODE_CACHE(%struct.inode* %27)
  %29 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %9, align 8
  %30 = call i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree* %18, i32 %28, %struct.ocfs2_xattr_value_buf* %29)
  %31 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %9, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %31, i32 0, i32 0
  %33 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %32, align 8
  %34 = load i32*, i32** %17, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @INODE_CACHE(%struct.inode* %35)
  %37 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %9, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %41 = call i32 %33(i32* %34, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %7
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %113

47:                                               ; preds = %7
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %54, i32 0, i32 0
  %56 = call i32 @ocfs2_remove_extent(i32* %48, %struct.ocfs2_extent_tree* %18, i32 %49, i32 %50, i32 %53, i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %113

62:                                               ; preds = %47
  %63 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %9, align 8
  %64 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @le32_add_cpu(i32* %66, i32 %68)
  %70 = load i32*, i32** %17, align 8
  %71 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ocfs2_journal_dirty(i32* %70, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %113

80:                                               ; preds = %62
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ocfs2_blocks_to_clusters(i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %95 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %98 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %97, i32 0, i32 0
  %99 = call i32 @ocfs2_decrease_refcount(%struct.inode* %86, i32* %87, i32 %92, i32 %93, i32 %96, i32* %98, i32 1)
  store i32 %99, i32* %15, align 4
  br label %106

100:                                              ; preds = %80
  %101 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %14, align 8
  %102 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %101, i32 0, i32 0
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @ocfs2_cache_cluster_dealloc(i32* %102, i32 %103, i32 %104)
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %100, %85
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %77, %59, %44
  %114 = load i32, i32* %15, align 4
  ret i32 %114
}

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_init_xattr_value_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_decrease_refcount(%struct.inode*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_cache_cluster_dealloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
