; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_ac_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_free_ac_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i32*, %struct.inode* }
%struct.inode = type { i32 }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %0) #0 {
  %2 = alloca %struct.ocfs2_alloc_context*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %2, align 8
  %4 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %4, i32 0, i32 2
  %6 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @ocfs2_inode_unlock(%struct.inode* %16, i32 1)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @iput(%struct.inode* %22)
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @brelse(i32* %29)
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
