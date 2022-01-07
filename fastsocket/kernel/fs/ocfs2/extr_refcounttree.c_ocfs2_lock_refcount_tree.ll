; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_lock_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_tree = type { i64, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %0, i32 %1, i32 %2, %struct.ocfs2_refcount_tree** %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_refcount_tree**, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_tree*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ocfs2_refcount_tree** %3, %struct.ocfs2_refcount_tree*** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  store i32 0, i32* %13, align 4
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %17

17:                                               ; preds = %93, %5
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ocfs2_get_refcount_tree(%struct.ocfs2_super* %18, i32 %19, %struct.ocfs2_refcount_tree** %14)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %109

27:                                               ; preds = %17
  %28 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %29 = call i32 @ocfs2_refcount_tree_get(%struct.ocfs2_refcount_tree* %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %31 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @__ocfs2_lock_refcount_tree(%struct.ocfs2_super* %30, %struct.ocfs2_refcount_tree* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  %39 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %40 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %39)
  br label %105

41:                                               ; preds = %27
  %42 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %43 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %42, i32 0, i32 3
  %44 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %45 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ocfs2_read_refcount_block(i32* %43, i32 %46, %struct.buffer_head** %15)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %54 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %53, %struct.ocfs2_refcount_tree* %54, i32 %55)
  %57 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %58 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %57)
  br label %105

59:                                               ; preds = %41
  %60 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %63, %struct.ocfs2_refcount_block** %16, align 8
  %64 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %16, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le32_to_cpu(i32 %69)
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %59
  %73 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %79 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %80 = call i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super* %78, %struct.ocfs2_refcount_tree* %79)
  %81 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %82 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %85 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %84, %struct.ocfs2_refcount_tree* %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %92 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %95 = call i32 @brelse(%struct.buffer_head* %94)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %17

96:                                               ; preds = %59
  %97 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %14, align 8
  %98 = load %struct.ocfs2_refcount_tree**, %struct.ocfs2_refcount_tree*** %10, align 8
  store %struct.ocfs2_refcount_tree* %97, %struct.ocfs2_refcount_tree** %98, align 8
  %99 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %100 = icmp ne %struct.buffer_head** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %103 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %102, %struct.buffer_head** %103, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %50, %36
  %106 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %23
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @ocfs2_get_refcount_tree(%struct.ocfs2_super*, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_tree_get(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @__ocfs2_lock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
