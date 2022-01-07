; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_format_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_format_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_dx_leaf = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_DX_LEAF_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Dir %llu, format dx_leaf: %llu, entry count: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head**, i32, i64)* @ocfs2_dx_dir_format_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_format_cluster(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.buffer_head** %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dx_leaf*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %109, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_6__* %24, i64 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %16, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %31 = icmp eq %struct.buffer_head* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %113

35:                                               ; preds = %21
  %36 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 %39
  store %struct.buffer_head* %36, %struct.buffer_head** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = call i32 @INODE_CACHE(%struct.inode* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %44 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %42, %struct.buffer_head* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @INODE_CACHE(%struct.inode* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %49 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %50 = call i32 @ocfs2_journal_access_dl(i32* %45, i32 %47, %struct.buffer_head* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %113

56:                                               ; preds = %35
  %57 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %60, %struct.ocfs2_dx_leaf** %15, align 8
  %61 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memset(%struct.ocfs2_dx_leaf* %61, i32 0, i32 %66)
  %68 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %69 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @OCFS2_DX_LEAF_SIGNATURE, align 4
  %72 = call i32 @strcpy(i32 %70, i32 %71)
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cpu_to_le64(i64 %81)
  %83 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %84 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %86 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @ocfs2_dx_entries_per_leaf(%struct.TYPE_6__* %87)
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call %struct.TYPE_7__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %15, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %99, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %108 = call i32 @ocfs2_journal_dirty(i32* %106, %struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %56
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %17

112:                                              ; preds = %17
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %53, %32
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_dl(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_leaf*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_dx_entries_per_leaf(%struct.TYPE_6__*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32) #1

declare dso_local %struct.TYPE_7__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
