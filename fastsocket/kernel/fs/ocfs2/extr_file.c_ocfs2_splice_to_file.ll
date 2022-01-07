; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_splice_to_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_splice_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.splice_desc = type { i32, i32 }

@pipe_to_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.file*, %struct.splice_desc*)* @ocfs2_splice_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_splice_to_file(%struct.pipe_inode_info* %0, %struct.file* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %14 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 1
  %15 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %16 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ocfs2_prepare_inode_for_write(i32 %12, i32* %14, i32 %17, i32 0, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %27 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %28 = load i32, i32* @pipe_to_file, align 4
  %29 = call i32 @splice_from_pipe_feed(%struct.pipe_inode_info* %26, %struct.splice_desc* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ocfs2_prepare_inode_for_write(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @splice_from_pipe_feed(%struct.pipe_inode_info*, %struct.splice_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
