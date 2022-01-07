; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_chain_list = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_group_desc = type { i8*, i8*, i64, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"group block (%llu) != b_blocknr (%llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_GROUP_DESC_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i64, i64, %struct.ocfs2_chain_list*)* @ocfs2_block_group_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_fill(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64 %4, %struct.ocfs2_chain_list* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_chain_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_group_desc*, align 8
  %15 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.ocfs2_chain_list* %5, %struct.ocfs2_chain_list** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %19, %struct.ocfs2_group_desc** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %15, align 8
  %23 = call i32 (...) @mlog_entry_void()
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.super_block*, %struct.super_block** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ocfs2_error(%struct.super_block* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %13, align 4
  br label %126

40:                                               ; preds = %6
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @INODE_CACHE(%struct.inode* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %45 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %46 = call i32 @ocfs2_journal_access_gd(i32* %41, i32 %43, %struct.buffer_head* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %126

52:                                               ; preds = %40
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %54 = load %struct.super_block*, %struct.super_block** %15, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(%struct.ocfs2_group_desc* %53, i32 0, i32 %56)
  %58 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %59 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OCFS2_GROUP_DESC_SIGNATURE, align 4
  %62 = call i32 @strcpy(i32 %60, i32 %61)
  %63 = load %struct.super_block*, %struct.super_block** %15, align 8
  %64 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_le32(i32 %66)
  %68 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %69 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %15, align 8
  %71 = call i64 @ocfs2_group_bitmap_size(%struct.super_block* %70)
  %72 = call i8* @cpu_to_le16(i64 %71)
  %73 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %12, align 8
  %76 = call i64 @ocfs2_bits_per_group(%struct.ocfs2_chain_list* %75)
  %77 = call i8* @cpu_to_le16(i64 %76)
  %78 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i8* @cpu_to_le16(i64 %80)
  %82 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %83 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %12, align 8
  %85 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %92 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @cpu_to_le64(i64 %96)
  %98 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %99 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i8* @cpu_to_le64(i64 %100)
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %103 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %105 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i64*
  %108 = call i32 @ocfs2_set_bit(i32 0, i64* %107)
  %109 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %110 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @le16_to_cpu(i8* %111)
  %113 = sub i64 %112, 1
  %114 = call i8* @cpu_to_le16(i64 %113)
  %115 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %116 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %119 = call i32 @ocfs2_journal_dirty(i32* %117, %struct.buffer_head* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %52
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %125

125:                                              ; preds = %122, %52
  br label %126

126:                                              ; preds = %125, %49, %29
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @mlog_exit(i32 %127)
  %129 = load i32, i32* %13, align 4
  ret i32 %129
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_group_desc*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @ocfs2_group_bitmap_size(%struct.super_block*) #1

declare dso_local i64 @ocfs2_bits_per_group(%struct.ocfs2_chain_list*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_bit(i32, i64*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
