; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_simple_size_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_simple_size_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_simple_size_update(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ocfs2_super* @OCFS2_SB(i32 %12)
  store %struct.ocfs2_super* %13, %struct.ocfs2_super** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %15 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %16 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %14, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %40

25:                                               ; preds = %3
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ocfs2_set_inode_size(i32* %26, %struct.inode* %27, %struct.buffer_head* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_set_inode_size(i32*, %struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
