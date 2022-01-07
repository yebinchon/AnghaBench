; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"reiserfs-13077\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"nfsd/reiserfs, fhtype=%d, len=%d - odd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.fid* %1, %struct.fid** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %12
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @reiserfs_warning(%struct.super_block* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %15
  store i32 5, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load %struct.fid*, %struct.fid** %6, align 8
  %27 = getelementptr inbounds %struct.fid, %struct.fid* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fid*, %struct.fid** %6, align 8
  %32 = getelementptr inbounds %struct.fid, %struct.fid* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 5
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %24
  %42 = load %struct.fid*, %struct.fid** %6, align 8
  %43 = getelementptr inbounds %struct.fid, %struct.fid* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32 [ %46, %41 ], [ 0, %47 ]
  %50 = call %struct.dentry* @reiserfs_get_dentry(%struct.super_block* %25, i32 %30, i32 %35, i32 %49)
  ret %struct.dentry* %50
}

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local %struct.dentry* @reiserfs_get_dentry(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
