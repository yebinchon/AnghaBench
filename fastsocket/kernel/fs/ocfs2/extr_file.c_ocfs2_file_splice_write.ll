; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_splice_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.file = type { %struct.TYPE_9__, %struct.address_space* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.splice_desc = type { i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.file* }

@.str = private unnamed_addr constant [26 x i8] c"(0x%p, 0x%p, %u, '%.*s')\0A\00", align 1
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.file*, i32*, i64, i32)* @ocfs2_file_splice_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.splice_desc, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  store %struct.address_space* %19, %struct.address_space** %12, align 8
  %20 = load %struct.address_space*, %struct.address_space** %12, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 1
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 2
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %33, %struct.file** %32, align 8
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.file*, %struct.file** %7, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlog_entry(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.file* %34, %struct.pipe_inode_info* %35, i32 %37, i32 %44, i32 %51)
  %53 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %54 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %5
  %58 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %59 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* @I_MUTEX_PARENT, align 4
  %63 = call i32 @mutex_lock_nested(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %5
  %65 = call i32 @splice_from_pipe_begin(%struct.splice_desc* %14)
  br label %66

66:                                               ; preds = %94, %64
  %67 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %68 = call i32 @splice_from_pipe_next(%struct.pipe_inode_info* %67, %struct.splice_desc* %14)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %97

72:                                               ; preds = %66
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* @I_MUTEX_CHILD, align 4
  %76 = call i32 @mutex_lock_nested(i32* %74, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %13, align 8
  %78 = call i32 @ocfs2_rw_lock(%struct.inode* %77, i32 1)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %90

84:                                               ; preds = %72
  %85 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %86 = load %struct.file*, %struct.file** %7, align 8
  %87 = call i32 @ocfs2_splice_to_file(%struct.pipe_inode_info* %85, %struct.file* %86, %struct.splice_desc* %14)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.inode*, %struct.inode** %13, align 8
  %89 = call i32 @ocfs2_rw_unlock(%struct.inode* %88, i32 1)
  br label %90

90:                                               ; preds = %84, %81
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %66, label %97

97:                                               ; preds = %94, %71
  %98 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %99 = call i32 @splice_from_pipe_end(%struct.pipe_inode_info* %98, %struct.splice_desc* %14)
  %100 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %101 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %106 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %110

110:                                              ; preds = %104, %97
  %111 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %14, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %123 = add nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %126 = ashr i32 %124, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %15, align 8
  %128 = load %struct.file*, %struct.file** %7, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @generic_write_sync(%struct.file* %128, i32 %130, i32 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %11, align 4
  br label %142

137:                                              ; preds = %120
  %138 = load i32, i32* %11, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %138
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %135
  %143 = load %struct.address_space*, %struct.address_space** %12, align 8
  %144 = load i64, i64* %15, align 8
  %145 = call i32 @balance_dirty_pages_ratelimited_nr(%struct.address_space* %143, i64 %144)
  br label %146

146:                                              ; preds = %142, %117
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @mlog_exit(i32 %147)
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local i32 @mlog_entry(i8*, %struct.file*, %struct.pipe_inode_info*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @splice_from_pipe_begin(%struct.splice_desc*) #1

declare dso_local i32 @splice_from_pipe_next(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_splice_to_file(%struct.pipe_inode_info*, %struct.file*, %struct.splice_desc*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @splice_from_pipe_end(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @generic_write_sync(%struct.file*, i32, i32) #1

declare dso_local i32 @balance_dirty_pages_ratelimited_nr(%struct.address_space*, i64) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
