; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"dirino=%llu\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mlog_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ocfs2_inode_lock_atime(%struct.inode* %21, i32 %24, i32* %9)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call i32 @ocfs2_inode_unlock(%struct.inode* %32, i32 1)
  store i32 0, i32* %9, align 4
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @ocfs2_inode_lock(%struct.inode* %34, i32* null, i32 0)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %28, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %60

48:                                               ; preds = %36
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ocfs2_dir_foreach_blk(%struct.inode* %49, i32* %51, i32* %53, i8* %54, i32 %55, i32* null)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ocfs2_inode_unlock(%struct.inode* %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %47
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mlog_exit(i32 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_atime(%struct.inode*, i32, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_dir_foreach_blk(%struct.inode*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
