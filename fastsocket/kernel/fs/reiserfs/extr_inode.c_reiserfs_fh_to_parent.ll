; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %59

13:                                               ; preds = %4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 5
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.fid*, %struct.fid** %7, align 8
  %19 = getelementptr inbounds %struct.fid, %struct.fid* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  br label %29

23:                                               ; preds = %13
  %24 = load %struct.fid*, %struct.fid** %7, align 8
  %25 = getelementptr inbounds %struct.fid, %struct.fid* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i32 [ %22, %17 ], [ %28, %23 ]
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 5
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.fid*, %struct.fid** %7, align 8
  %35 = getelementptr inbounds %struct.fid, %struct.fid* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.fid*, %struct.fid** %7, align 8
  %41 = getelementptr inbounds %struct.fid, %struct.fid* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ %38, %33 ], [ %44, %39 ]
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.fid*, %struct.fid** %7, align 8
  %51 = getelementptr inbounds %struct.fid, %struct.fid* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %54, %49 ], [ 0, %55 ]
  %58 = call %struct.dentry* @reiserfs_get_dentry(%struct.super_block* %14, i32 %30, i32 %46, i32 %57)
  store %struct.dentry* %58, %struct.dentry** %5, align 8
  br label %59

59:                                               ; preds = %56, %12
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %60
}

declare dso_local %struct.dentry* @reiserfs_get_dentry(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
