; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_extend_no_holes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_extend_no_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_extend_no_holes(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %10)
  store %struct.ocfs2_inode_info* %11, %struct.ocfs2_inode_info** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ocfs2_clusters_for_bytes(i32 %14, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %25 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub nsw i64 %27, %26
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %9, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @__ocfs2_extend_allocation(%struct.inode* %33, i64 %36, i64 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %55

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ocfs2_zero_extend(%struct.inode* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @__ocfs2_extend_allocation(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_zero_extend(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
