; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_search_one_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_search_one_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, i32*, i32*)*, %struct.TYPE_2__*, i32, %struct.inode.0* }
%struct.inode = type opaque
%struct.buffer_head = type opaque
%struct.TYPE_2__ = type { i64 }
%struct.inode.0 = type { i32 }
%struct.buffer_head.1 = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_context*, i32*, i32, i32, i32*, i32*, i32, i32*)* @ocfs2_search_one_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head.1*, align 8
  %21 = alloca %struct.ocfs2_group_desc*, align 8
  %22 = alloca %struct.ocfs2_dinode*, align 8
  %23 = alloca %struct.inode.0*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.buffer_head.1* null, %struct.buffer_head.1** %20, align 8
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %29, %struct.ocfs2_dinode** %22, align 8
  %30 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %31 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %30, i32 0, i32 3
  %32 = load %struct.inode.0*, %struct.inode.0** %31, align 8
  store %struct.inode.0* %32, %struct.inode.0** %23, align 8
  %33 = load %struct.inode.0*, %struct.inode.0** %23, align 8
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %22, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @ocfs2_read_group_descriptor(%struct.inode.0* %33, %struct.ocfs2_dinode* %34, i32 %35, %struct.buffer_head.1** %20)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %9, align 4
  br label %118

43:                                               ; preds = %8
  %44 = load %struct.buffer_head.1*, %struct.buffer_head.1** %20, align 8
  %45 = getelementptr inbounds %struct.buffer_head.1, %struct.buffer_head.1* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %47, %struct.ocfs2_group_desc** %21, align 8
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %49 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %48, i32 0, i32 0
  %50 = load i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, i32*, i32*)*, i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i32, i32*, i32*)** %49, align 8
  %51 = load %struct.inode.0*, %struct.inode.0** %23, align 8
  %52 = bitcast %struct.inode.0* %51 to %struct.inode*
  %53 = load %struct.buffer_head.1*, %struct.buffer_head.1** %20, align 8
  %54 = bitcast %struct.buffer_head.1* %53 to %struct.buffer_head*
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %58 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 %50(%struct.inode* %52, %struct.buffer_head* %54, i32 %55, i32 %56, i32 %59, i32* %60, i32* %19)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %43
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  br label %114

73:                                               ; preds = %43
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %15, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.inode.0*, %struct.inode.0** %23, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %79 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %84 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = call i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0* %76, i32* %77, %struct.TYPE_2__* %80, i32 %82, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %114

93:                                               ; preds = %73
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.inode.0*, %struct.inode.0** %23, align 8
  %96 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %97 = load %struct.buffer_head.1*, %struct.buffer_head.1** %20, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ocfs2_block_group_set_bits(i32* %94, %struct.inode.0* %95, %struct.ocfs2_group_desc* %96, %struct.buffer_head.1* %97, i32 %99, i32 %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %21, align 8
  %110 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load i32*, i32** %17, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %90, %72
  %115 = load %struct.buffer_head.1*, %struct.buffer_head.1** %20, align 8
  %116 = call i32 @brelse(%struct.buffer_head.1* %115)
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %114, %39
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode.0*, %struct.ocfs2_dinode*, i32, %struct.buffer_head.1**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_alloc_dinode_update_counts(%struct.inode.0*, i32*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.inode.0*, %struct.ocfs2_group_desc*, %struct.buffer_head.1*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
