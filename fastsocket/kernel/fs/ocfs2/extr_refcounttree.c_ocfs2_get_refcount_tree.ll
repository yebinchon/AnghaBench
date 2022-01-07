; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_refcount_tree* }
%struct.ocfs2_refcount_tree = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, %struct.ocfs2_refcount_tree**)* @ocfs2_get_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_refcount_tree(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_refcount_tree** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_refcount_tree**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_refcount_tree*, align 8
  %10 = alloca %struct.ocfs2_refcount_tree*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_refcount_tree** %2, %struct.ocfs2_refcount_tree*** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 1
  %18 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %19 = icmp ne %struct.ocfs2_refcount_tree* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 1
  %23 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %22, align 8
  %24 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 1
  %31 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %30, align 8
  store %struct.ocfs2_refcount_tree* %31, %struct.ocfs2_refcount_tree** %9, align 8
  br label %36

32:                                               ; preds = %20, %3
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super* %33, i32 %34)
  store %struct.ocfs2_refcount_tree* %35, %struct.ocfs2_refcount_tree** %9, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %9, align 8
  %38 = icmp ne %struct.ocfs2_refcount_tree* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %106

40:                                               ; preds = %36
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super* %44, i32 %45)
  store %struct.ocfs2_refcount_tree* %46, %struct.ocfs2_refcount_tree** %10, align 8
  %47 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %48 = icmp ne %struct.ocfs2_refcount_tree* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %124

55:                                               ; preds = %40
  %56 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %57 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ocfs2_read_refcount_block(i32* %57, i32 %58, %struct.buffer_head** %11)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  %65 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %65, i32 0, i32 0
  %67 = call i32 @ocfs2_metadata_cache_exit(i32* %66)
  %68 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %69 = call i32 @kfree(%struct.ocfs2_refcount_tree* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %124

71:                                               ; preds = %55
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %75, %struct.ocfs2_refcount_block** %12, align 8
  %76 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %77 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %83 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %86 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super* %82, %struct.ocfs2_refcount_tree* %83, i32 %84, i32 %87)
  %89 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %90 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %89, i32 0, i32 0
  %91 = call i32 @ocfs2_metadata_cache_purge(i32* %90)
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %93 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super* %95, i32 %96)
  store %struct.ocfs2_refcount_tree* %97, %struct.ocfs2_refcount_tree** %9, align 8
  %98 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %9, align 8
  %99 = icmp ne %struct.ocfs2_refcount_tree* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %71
  br label %106

101:                                              ; preds = %71
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %103 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %104 = call i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super* %102, %struct.ocfs2_refcount_tree* %103)
  %105 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  store %struct.ocfs2_refcount_tree* %105, %struct.ocfs2_refcount_tree** %9, align 8
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %10, align 8
  br label %106

106:                                              ; preds = %101, %100, %39
  %107 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %9, align 8
  %108 = load %struct.ocfs2_refcount_tree**, %struct.ocfs2_refcount_tree*** %7, align 8
  store %struct.ocfs2_refcount_tree* %107, %struct.ocfs2_refcount_tree** %108, align 8
  %109 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %9, align 8
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %111 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %110, i32 0, i32 1
  store %struct.ocfs2_refcount_tree* %109, %struct.ocfs2_refcount_tree** %111, align 8
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %113 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %116 = icmp ne %struct.ocfs2_refcount_tree* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %10, align 8
  %119 = call i32 @ocfs2_free_refcount_tree(%struct.ocfs2_refcount_tree* %118)
  br label %120

120:                                              ; preds = %117, %106
  %121 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %122 = call i32 @brelse(%struct.buffer_head* %121)
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %62, %49
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_find_refcount_tree(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_metadata_cache_exit(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_refcount_tree_lock(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_purge(i32*) #1

declare dso_local i32 @ocfs2_insert_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_free_refcount_tree(%struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
