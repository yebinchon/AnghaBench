; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32* }
%struct.ocfs2_inode_handle = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @ocfs2_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_inode_handle, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %46

17:                                               ; preds = %13
  %18 = load %struct.fid*, %struct.fid** %7, align 8
  %19 = getelementptr inbounds %struct.fid, %struct.fid* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 32
  %26 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.fid*, %struct.fid** %7, align 8
  %28 = getelementptr inbounds %struct.fid, %struct.fid* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 8
  %37 = load %struct.fid*, %struct.fid** %7, align 8
  %38 = getelementptr inbounds %struct.fid, %struct.fid* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  %43 = getelementptr inbounds %struct.ocfs2_inode_handle, %struct.ocfs2_inode_handle* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = call %struct.dentry* @ocfs2_get_dentry(%struct.super_block* %44, %struct.ocfs2_inode_handle* %10)
  store %struct.dentry* %45, %struct.dentry** %5, align 8
  br label %46

46:                                               ; preds = %17, %16
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %47
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.dentry* @ocfs2_get_dentry(%struct.super_block*, %struct.ocfs2_inode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
