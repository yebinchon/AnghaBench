; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_cached_block_free = type { %struct.ocfs2_cached_block_free*, i32, i32 }

@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_cached_block_free*)* @ocfs2_free_cached_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_free_cached_clusters(%struct.ocfs2_super* %0, %struct.ocfs2_cached_block_free* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_cached_block_free*, align 8
  %5 = alloca %struct.ocfs2_cached_block_free*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_cached_block_free* %1, %struct.ocfs2_cached_block_free** %4, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %67, %2
  %16 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %17 = icmp ne %struct.ocfs2_cached_block_free* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %20 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %24 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %68

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %33 = load i32, i32* @OCFS2_TRUNCATE_LOG_UPDATE, align 4
  %34 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @PTR_ERR(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %68

43:                                               ; preds = %31
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %47 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %44, i32* %45, i32 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %53, i32* %54)
  %56 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  store %struct.ocfs2_cached_block_free* %56, %struct.ocfs2_cached_block_free** %5, align 8
  %57 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %58 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %57, i32 0, i32 0
  %59 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %58, align 8
  store %struct.ocfs2_cached_block_free* %59, %struct.ocfs2_cached_block_free** %4, align 8
  %60 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %5, align 8
  %61 = call i32 @kfree(%struct.ocfs2_cached_block_free* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %68

67:                                               ; preds = %43
  br label %15

68:                                               ; preds = %64, %38, %27, %15
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  br label %72

72:                                               ; preds = %75, %68
  %73 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %74 = icmp ne %struct.ocfs2_cached_block_free* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  store %struct.ocfs2_cached_block_free* %76, %struct.ocfs2_cached_block_free** %5, align 8
  %77 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %4, align 8
  %78 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %77, i32 0, i32 0
  %79 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %78, align 8
  store %struct.ocfs2_cached_block_free* %79, %struct.ocfs2_cached_block_free** %4, align 8
  %80 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %5, align 8
  %81 = call i32 @kfree(%struct.ocfs2_cached_block_free* %80)
  br label %72

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_cached_block_free*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
