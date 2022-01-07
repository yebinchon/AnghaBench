; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_empty_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_empty_dir_priv = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ocfs2_empty_dir_filldir = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"bad directory (dir #%llu) - no `.' or `..'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_empty_dir_priv, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @memset(%struct.ocfs2_empty_dir_priv* %6, i32 0, i32 12)
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i64 @ocfs2_dir_indexed(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @ocfs2_empty_dir_dx(%struct.inode* %12, %struct.ocfs2_empty_dir_priv* %6)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mlog_errno(i32 %17)
  br label %19

19:                                               ; preds = %16, %11
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i32, i32* @ocfs2_empty_dir_filldir, align 4
  %23 = call i32 @ocfs2_dir_foreach(%struct.inode* %21, i32* %5, %struct.ocfs2_empty_dir_priv* %6, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @ML_ERROR, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mlog(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %42)
  store i32 1, i32* %2, align 4
  br label %50

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.ocfs2_empty_dir_priv*, i32, i32) #1

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32 @ocfs2_empty_dir_dx(%struct.inode*, %struct.ocfs2_empty_dir_priv*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_dir_foreach(%struct.inode*, i32*, %struct.ocfs2_empty_dir_priv*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
