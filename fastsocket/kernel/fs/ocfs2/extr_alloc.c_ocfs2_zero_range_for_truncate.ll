; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_zero_range_for_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_zero_range_for_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i64 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_zero_range_for_truncate(%struct.inode* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.page** null, %struct.page*** %12, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %15, align 8
  %19 = load %struct.super_block*, %struct.super_block** %15, align 8
  %20 = call i32 @OCFS2_SB(%struct.super_block* %19)
  %21 = call i32 @ocfs2_sparse_alloc(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %105

24:                                               ; preds = %4
  %25 = load %struct.super_block*, %struct.super_block** %15, align 8
  %26 = call i32 @ocfs2_pages_per_cluster(%struct.super_block* %25)
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.page** @kcalloc(i32 %26, i32 8, i32 %27)
  store %struct.page** %28, %struct.page*** %12, align 8
  %29 = load %struct.page**, %struct.page*** %12, align 8
  %30 = icmp eq %struct.page** %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %97

36:                                               ; preds = %24
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %97

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.super_block*, %struct.super_block** %15, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = ashr i64 %43, %46
  %48 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %42, i64 %47, i64* %13, i32* null, i32* %14)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %97

54:                                               ; preds = %41
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %54
  br label %97

63:                                               ; preds = %57
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.page**, %struct.page*** %12, align 8
  %68 = call i32 @ocfs2_grab_eof_pages(%struct.inode* %64, i64 %65, i64 %66, %struct.page** %67, i32* %11)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %97

74:                                               ; preds = %63
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.page**, %struct.page*** %12, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i64, i64* %13, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @ocfs2_zero_cluster_pages(%struct.inode* %75, i64 %76, i64 %77, %struct.page** %78, i32 %79, i64 %80, i32* %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load i32, i32* @SYNC_FILE_RANGE_WRITE, align 4
  %90 = call i32 @do_sync_mapping_range(i32 %85, i64 %86, i64 %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %96

96:                                               ; preds = %93, %74
  br label %97

97:                                               ; preds = %96, %71, %62, %51, %40, %31
  %98 = load %struct.page**, %struct.page*** %12, align 8
  %99 = icmp ne %struct.page** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.page**, %struct.page*** %12, align 8
  %102 = call i32 @kfree(%struct.page** %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %23
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @ocfs2_sparse_alloc(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocfs2_pages_per_cluster(%struct.super_block*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @ocfs2_grab_eof_pages(%struct.inode*, i64, i64, %struct.page**, i32*) #1

declare dso_local i32 @ocfs2_zero_cluster_pages(%struct.inode*, i64, i64, %struct.page**, i32, i64, i32*) #1

declare dso_local i32 @do_sync_mapping_range(i32, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
