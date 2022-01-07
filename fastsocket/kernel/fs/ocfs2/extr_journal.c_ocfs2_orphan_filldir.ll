; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_orphan_filldir_priv = type { %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode*, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@OCFS2_FI_FLAG_ORPHAN_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"queue orphan %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @ocfs2_orphan_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_orphan_filldir(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_orphan_filldir_priv*, align 8
  %15 = alloca %struct.inode*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.ocfs2_orphan_filldir_priv*
  store %struct.ocfs2_orphan_filldir_priv* %17, %struct.ocfs2_orphan_filldir_priv** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %59

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 2)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %59

33:                                               ; preds = %28, %25
  %34 = load %struct.ocfs2_orphan_filldir_priv*, %struct.ocfs2_orphan_filldir_priv** %14, align 8
  %35 = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, %struct.ocfs2_orphan_filldir_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @OCFS2_FI_FLAG_ORPHAN_RECOVERY, align 4
  %39 = call %struct.inode* @ocfs2_iget(i32 %36, i32 %37, i32 %38, i32 0)
  store %struct.inode* %39, %struct.inode** %15, align 8
  %40 = load %struct.inode*, %struct.inode** %15, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %59

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %15, align 8
  %46 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.ocfs2_orphan_filldir_priv*, %struct.ocfs2_orphan_filldir_priv** %14, align 8
  %51 = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, %struct.ocfs2_orphan_filldir_priv* %50, i32 0, i32 0
  %52 = load %struct.inode*, %struct.inode** %51, align 8
  %53 = load %struct.inode*, %struct.inode** %15, align 8
  %54 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.inode* %52, %struct.inode** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %15, align 8
  %57 = load %struct.ocfs2_orphan_filldir_priv*, %struct.ocfs2_orphan_filldir_priv** %14, align 8
  %58 = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, %struct.ocfs2_orphan_filldir_priv* %57, i32 0, i32 0
  store %struct.inode* %56, %struct.inode** %58, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %44, %43, %32, %24
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.inode* @ocfs2_iget(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
