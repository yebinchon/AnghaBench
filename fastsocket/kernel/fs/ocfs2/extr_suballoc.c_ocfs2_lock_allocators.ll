; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_lock_allocators.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_lock_allocators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_lock_allocators(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context** %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_alloc_context**, align 8
  %12 = alloca %struct.ocfs2_alloc_context**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %11, align 8
  store %struct.ocfs2_alloc_context** %5, %struct.ocfs2_alloc_context*** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %16, align 8
  %25 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %25, align 8
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %27 = icmp ne %struct.ocfs2_alloc_context** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %29, align 8
  br label %30

30:                                               ; preds = %28, %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %35 = icmp eq %struct.ocfs2_alloc_context** %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %41 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %42 = call i32 @ocfs2_num_free_extents(%struct.ocfs2_super* %40, %struct.ocfs2_extent_tree* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %100

49:                                               ; preds = %36
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %54 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56, %49
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %62 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %63 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %66 = call i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super* %61, i32 %64, %struct.ocfs2_alloc_context** %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %100

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %56, %52
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %100

83:                                               ; preds = %79
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %87 = call i32 @ocfs2_reserve_clusters(%struct.ocfs2_super* %84, i32 %85, %struct.ocfs2_alloc_context** %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %100

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %98, %82, %77, %45
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %104, align 8
  %106 = icmp ne %struct.ocfs2_alloc_context* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %109 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %108, align 8
  %110 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %109)
  %111 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %111, align 8
  br label %112

112:                                              ; preds = %107, %103
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_super*, %struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_reserve_clusters(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
