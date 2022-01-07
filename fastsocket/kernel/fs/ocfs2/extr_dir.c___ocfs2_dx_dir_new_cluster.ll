; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_dx_dir_new_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c___ocfs2_dx_dir_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, %struct.ocfs2_alloc_context*, %struct.buffer_head**, i32, i32*)* @__ocfs2_dx_dir_new_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_dx_dir_new_cluster(%struct.inode* %0, i32 %1, i32* %2, %struct.ocfs2_alloc_context* %3, %struct.buffer_head** %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %11, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %19, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %27 = call i32 @__ocfs2_claim_clusters(%struct.ocfs2_super* %24, i32* %25, %struct.ocfs2_alloc_context* %26, i32 1, i32 1, i32* %16, i32* %17)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %54

33:                                               ; preds = %7
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @ocfs2_clusters_to_blocks(i32 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @ocfs2_dx_dir_format_cluster(%struct.ocfs2_super* %39, i32* %40, %struct.inode* %41, %struct.buffer_head** %42, i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %54

51:                                               ; preds = %33
  %52 = load i32, i32* %18, align 4
  %53 = load i32*, i32** %14, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48, %30
  %55 = load i32, i32* %15, align 4
  ret i32 %55
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @__ocfs2_claim_clusters(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_dx_dir_format_cluster(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
