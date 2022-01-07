; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.pipe_inode_info = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(0x%p, 0x%p, %u, '%.*s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @ocfs2_file_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %13, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mlog_entry(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.file* %20, %struct.pipe_inode_info* %21, i32 %23, i32 %30, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = load %struct.file*, %struct.file** %6, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ocfs2_inode_lock_atime(%struct.inode* %39, i32 %42, i32* %12)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %5
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %59

49:                                               ; preds = %5
  %50 = load %struct.inode*, %struct.inode** %13, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ocfs2_inode_unlock(%struct.inode* %50, i32 %51)
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @generic_file_splice_read(%struct.file* %53, i32* %54, %struct.pipe_inode_info* %55, i64 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %49, %46
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @mlog_exit(i32 %60)
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @mlog_entry(i8*, %struct.file*, %struct.pipe_inode_info*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_inode_lock_atime(%struct.inode*, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @generic_file_splice_read(%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
