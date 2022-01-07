; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_reada_for_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_reada_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i64)* @reada_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reada_for_search(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.btrfs_disk_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.extent_buffer*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %16, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %151

29:                                               ; preds = %5
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 1
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 %34
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %35, align 8
  %37 = icmp ne %struct.extent_buffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %151

39:                                               ; preds = %29
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 1
  %42 = load %struct.extent_buffer**, %struct.extent_buffer*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %42, i64 %44
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %45, align 8
  store %struct.extent_buffer* %46, %struct.extent_buffer** %11, align 8
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %47, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @btrfs_level_size(%struct.btrfs_root* %50, i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %21, align 4
  %57 = call %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root* %54, i64 %55, i32 %56)
  store %struct.extent_buffer* %57, %struct.extent_buffer** %19, align 8
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %59 = icmp ne %struct.extent_buffer* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %62 = call i32 @free_extent_buffer(%struct.extent_buffer* %61)
  br label %151

63:                                               ; preds = %39
  %64 = load i64, i64* %14, align 8
  store i64 %64, i64* %15, align 8
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %66 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %20, align 4
  br label %68

68:                                               ; preds = %63, %150
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %20, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %151

75:                                               ; preds = %71
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %20, align 4
  br label %90

78:                                               ; preds = %68
  %79 = load i32, i32* %18, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %151

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %92 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @btrfs_node_key(%struct.extent_buffer* %99, %struct.btrfs_disk_key* %12, i32 %100)
  %102 = call i64 @btrfs_disk_key_objectid(%struct.btrfs_disk_key* %12)
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %151

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %95, %90
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %108, i32 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %14, align 8
  %117 = sub nsw i64 %115, %116
  %118 = icmp sle i64 %117, 65536
  br i1 %118, label %128, label %119

119:                                              ; preds = %114, %107
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = sub nsw i64 %124, %125
  %127 = icmp sle i64 %126, 65536
  br i1 %127, label %128, label %141

128:                                              ; preds = %123, %114
  %129 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %130 = load i32, i32* %20, align 4
  %131 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %129, i32 %130)
  store i64 %131, i64* %17, align 8
  %132 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i32, i32* %21, align 4
  %135 = load i64, i64* %17, align 8
  %136 = call i32 @readahead_tree_block(%struct.btrfs_root* %132, i64 %133, i32 %134, i64 %135)
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %16, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %16, align 8
  br label %141

141:                                              ; preds = %128, %123, %119
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %22, align 4
  %144 = load i64, i64* %16, align 8
  %145 = icmp sgt i64 %144, 65536
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %22, align 4
  %148 = icmp sgt i32 %147, 32
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %141
  br label %151

150:                                              ; preds = %146
  br label %68

151:                                              ; preds = %28, %38, %60, %149, %105, %87, %74
  ret void
}

declare dso_local i64 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_level_size(%struct.btrfs_root*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i64 @btrfs_disk_key_objectid(%struct.btrfs_disk_key*) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @readahead_tree_block(%struct.btrfs_root*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
