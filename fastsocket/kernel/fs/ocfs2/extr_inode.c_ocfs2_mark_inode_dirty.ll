; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_mark_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_mark_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"(inode %llu)\0A\00", align 1
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_mark_inode_dirty(i32* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %12, %struct.ocfs2_dinode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @mlog_entry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @INODE_CACHE(%struct.inode* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %23 = call i32 @ocfs2_journal_access_di(i32* %18, i32 %20, %struct.buffer_head* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %141

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 12
  store i8* %38, i8** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %41)
  %43 = call i32 @ocfs2_get_inode_flags(%struct.TYPE_9__* %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @i_size_read(%struct.inode* %62)
  %64 = call i8* @cpu_to_le64(i32 %63)
  %65 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ocfs2_set_links_count(%struct.ocfs2_dinode* %67, i32 %70)
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_le64(i32 %93)
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_le64(i32 %107)
  %109 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %117 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_le64(i32 %121)
  %123 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %124 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %131 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %134 = call i32 @ocfs2_journal_dirty(i32* %132, %struct.buffer_head* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %29
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %140

140:                                              ; preds = %137, %29
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %26
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @mlog_exit(i32 %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_get_inode_flags(%struct.TYPE_9__*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_set_links_count(%struct.ocfs2_dinode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
