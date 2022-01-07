; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i64 }
%struct.ocfs2_super = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_local_alloc = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Checking %llu against %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_alloc_context*, i64)* @ocfs2_local_alloc_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_in_range(%struct.inode* %0, %struct.ocfs2_alloc_context* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_local_alloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %8, align 8
  %17 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %18 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %9, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %30 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %29)
  store %struct.ocfs2_local_alloc* %30, %struct.ocfs2_local_alloc** %10, align 8
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super* %31, %struct.ocfs2_dinode* %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @mlog_errno(i32 %39)
  store i32 0, i32* %4, align 4
  br label %67

41:                                               ; preds = %22
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %10, align 8
  %46 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @ocfs2_clusters_to_blocks(i32 %44, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %57 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %62 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65, %37, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super*, %struct.ocfs2_dinode*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
