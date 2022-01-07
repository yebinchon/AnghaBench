; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }

@SPLIT_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*, i32)* @ocfs2_split_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_split_record(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path* %2, %struct.ocfs2_extent_rec* %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %8, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %12, align 4
  store %struct.ocfs2_extent_list* null, %struct.ocfs2_extent_list** %13, align 8
  %23 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %24 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %23)
  store %struct.ocfs2_extent_list* %24, %struct.ocfs2_extent_list** %14, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %26 = icmp ne %struct.ocfs2_path* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %29 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %28)
  store %struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_list** %13, align 8
  br label %30

30:                                               ; preds = %27, %5
  %31 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  store %struct.ocfs2_extent_list* %31, %struct.ocfs2_extent_list** %16, align 8
  %32 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %15, align 8
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %78

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  %42 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %43 = icmp ne %struct.ocfs2_path* %42, null
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %45, i32 0, i32 0
  %47 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %46, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %47, i64 0
  %49 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %48)
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SPLIT_LEFT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  store %struct.ocfs2_extent_list* %55, %struct.ocfs2_extent_list** %15, align 8
  br label %76

56:                                               ; preds = %44
  %57 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %57, i32 0, i32 0
  %59 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %59, i64 %61
  store %struct.ocfs2_extent_rec* %62, %struct.ocfs2_extent_rec** %18, align 8
  %63 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %64 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %65 = call i32 @ocfs2_rotate_leaf(%struct.ocfs2_extent_list* %63, %struct.ocfs2_extent_rec* %64)
  %66 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  store %struct.ocfs2_extent_list* %66, %struct.ocfs2_extent_list** %16, align 8
  %67 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %18, align 8
  %68 = call i32 @memset(%struct.ocfs2_extent_rec* %67, i32 0, i32 4)
  %69 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, -1
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  br label %76

76:                                               ; preds = %56, %54
  br label %77

77:                                               ; preds = %76, %41, %38
  br label %102

78:                                               ; preds = %30
  %79 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %80 = icmp ne %struct.ocfs2_path* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %85 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %84, i32 0, i32 0
  %86 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %85, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %86, i64 0
  %88 = call i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  store %struct.ocfs2_extent_list* %93, %struct.ocfs2_extent_list** %16, align 8
  %94 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  store %struct.ocfs2_extent_list* %94, %struct.ocfs2_extent_list** %15, align 8
  %95 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, -1
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  br label %102

102:                                              ; preds = %78, %77
  %103 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %103, i32 0, i32 0
  %105 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %105, i64 %107
  store %struct.ocfs2_extent_rec* %108, %struct.ocfs2_extent_rec** %17, align 8
  %109 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ocfs2_metadata_cache_get_super(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %115 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %116 = call i32 @ocfs2_subtract_from_rec(i32 %112, i32 %113, %struct.ocfs2_extent_rec* %114, %struct.ocfs2_extent_rec* %115)
  %117 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %118 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %119 = call i32 @ocfs2_rotate_leaf(%struct.ocfs2_extent_list* %117, %struct.ocfs2_extent_rec* %118)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_rotate_leaf(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @ocfs2_subtract_from_rec(i32, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
