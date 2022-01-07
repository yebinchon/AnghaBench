; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_steal_inode_from_other_nodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_steal_inode_from_other_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, i32 }
%struct.ocfs2_alloc_context = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@NOT_ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context*)* @ocfs2_steal_inode_from_other_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_steal_inode_from_other_nodes(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_alloc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %4, align 8
  %8 = load i32, i32* @ENOSPC, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = call i64 @ocfs2_get_inode_steal_slot(%struct.ocfs2_super* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %15, %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %58

42:                                               ; preds = %35
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %44 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %45 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @NOT_ALLOC_NEW_GROUP, align 4
  %48 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %43, %struct.ocfs2_alloc_context* %44, i32 %45, i64 %46, i32* null, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ocfs2_set_inode_steal_slot(%struct.ocfs2_super* %52, i64 %53)
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %57 = call i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %21

63:                                               ; preds = %51, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @ocfs2_get_inode_steal_slot(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i64, i32*, i32) #1

declare dso_local i32 @ocfs2_set_inode_steal_slot(%struct.ocfs2_super*, i64) #1

declare dso_local i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
