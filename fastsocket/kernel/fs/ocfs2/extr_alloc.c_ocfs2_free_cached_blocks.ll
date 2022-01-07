; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_free_cached_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_cached_block_free = type { %struct.ocfs2_cached_block_free*, i32, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Free bit: (bit %u, blkno %llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32, %struct.ocfs2_cached_block_free*)* @ocfs2_free_cached_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_free_cached_blocks(%struct.ocfs2_super* %0, i32 %1, i32 %2, %struct.ocfs2_cached_block_free* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_cached_block_free*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_cached_block_free*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_cached_block_free* %3, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %15, i32 %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %113

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call i32 @ocfs2_inode_lock(%struct.inode* %30, %struct.buffer_head** %13, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %107

37:                                               ; preds = %26
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %39 = load i32, i32* @OCFS2_SUBALLOC_FREE, align 4
  %40 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %38, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @PTR_ERR(i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %102

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %90, %49
  %51 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %52 = icmp ne %struct.ocfs2_cached_block_free* %51, null
  br i1 %52, label %53, label %97

53:                                               ; preds = %50
  %54 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ocfs2_which_suballoc_group(i64 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %65 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %71 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %72 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ocfs2_free_suballoc_bits(i32* %68, %struct.inode* %69, %struct.buffer_head* %70, i32 %73, i32 %74, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %98

81:                                               ; preds = %53
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @OCFS2_SUBALLOC_FREE, align 4
  %84 = call i32 @ocfs2_extend_trans(i32* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %98

90:                                               ; preds = %81
  %91 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.ocfs2_cached_block_free* %91, %struct.ocfs2_cached_block_free** %14, align 8
  %92 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %93 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %92, i32 0, i32 0
  %94 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %93, align 8
  store %struct.ocfs2_cached_block_free* %94, %struct.ocfs2_cached_block_free** %8, align 8
  %95 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %14, align 8
  %96 = call i32 @kfree(%struct.ocfs2_cached_block_free* %95)
  br label %50

97:                                               ; preds = %50
  br label %98

98:                                               ; preds = %97, %87, %78
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %44
  %103 = load %struct.inode*, %struct.inode** %12, align 8
  %104 = call i32 @ocfs2_inode_unlock(%struct.inode* %103, i32 1)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  br label %107

107:                                              ; preds = %102, %34
  %108 = load %struct.inode*, %struct.inode** %12, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.inode*, %struct.inode** %12, align 8
  %112 = call i32 @iput(%struct.inode* %111)
  br label %113

113:                                              ; preds = %107, %21
  br label %114

114:                                              ; preds = %117, %113
  %115 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %116 = icmp ne %struct.ocfs2_cached_block_free* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  store %struct.ocfs2_cached_block_free* %118, %struct.ocfs2_cached_block_free** %14, align 8
  %119 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %8, align 8
  %120 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %119, i32 0, i32 0
  %121 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %120, align 8
  store %struct.ocfs2_cached_block_free* %121, %struct.ocfs2_cached_block_free** %8, align 8
  %122 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %14, align 8
  %123 = call i32 @kfree(%struct.ocfs2_cached_block_free* %122)
  br label %114

124:                                              ; preds = %114
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i64, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_cached_block_free*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
