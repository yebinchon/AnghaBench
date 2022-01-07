; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_find_next_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_find_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32, %struct.extent_buffer**, i64*, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_next_key(%struct.btrfs_root* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_key, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %9, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %23 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  br label %29

29:                                               ; preds = %90, %6
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %204

33:                                               ; preds = %29
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 2
  %36 = load %struct.extent_buffer**, %struct.extent_buffer*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %36, i64 %38
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %39, align 8
  %41 = icmp ne %struct.extent_buffer* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %205

43:                                               ; preds = %33
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 2
  %54 = load %struct.extent_buffer**, %struct.extent_buffer*** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %54, i64 %56
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %57, align 8
  store %struct.extent_buffer* %58, %struct.extent_buffer** %15, align 8
  br label %59

59:                                               ; preds = %195, %187, %146, %43
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %62 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %61)
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %147

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %71 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %70, i32 0, i32 2
  %72 = load %struct.extent_buffer**, %struct.extent_buffer*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %72, i64 %75
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %76, align 8
  %78 = icmp ne %struct.extent_buffer* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69, %64
  store i32 1, i32* %7, align 4
  br label %205

80:                                               ; preds = %69
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %29

93:                                               ; preds = %80
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %95 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %94)
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %100, %struct.btrfs_key* %18, i32 %101)
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %104, %struct.btrfs_key* %18, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %109 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %17, align 4
  %111 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %112 = call i32 @btrfs_release_path(%struct.btrfs_path* %111)
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %115 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %118 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %116, %struct.btrfs_key* %18, %struct.btrfs_path* %117, i32 0, i32 0)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %121 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %7, align 4
  br label %205

126:                                              ; preds = %107
  %127 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %128 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %127, i32 0, i32 2
  %129 = load %struct.extent_buffer**, %struct.extent_buffer*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %129, i64 %131
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %132, align 8
  store %struct.extent_buffer* %133, %struct.extent_buffer** %15, align 8
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %135 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %126
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %143, %126
  br label %59

147:                                              ; preds = %59
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %152 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %151, %struct.btrfs_key* %152, i32 %153)
  br label %203

155:                                              ; preds = %147
  %156 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %156, i32 %157)
  store i64 %158, i64* %19, align 8
  %159 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %159, i32 %160)
  store i64 %161, i64* %20, align 8
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %155
  %165 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i32 @btrfs_level_size(%struct.btrfs_root* %167, i32 %169)
  %171 = call %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root* %165, i64 %166, i32 %170)
  store %struct.extent_buffer* %171, %struct.extent_buffer** %21, align 8
  %172 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %173 = icmp ne %struct.extent_buffer* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %176 = load i64, i64* %20, align 8
  %177 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %175, i64 %176, i32 1)
  %178 = icmp sle i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %174, %164
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  %182 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %183 = icmp ne %struct.extent_buffer* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %186 = call i32 @free_extent_buffer(%struct.extent_buffer* %185)
  br label %187

187:                                              ; preds = %184, %179
  br label %59

188:                                              ; preds = %174
  %189 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %190 = call i32 @free_extent_buffer(%struct.extent_buffer* %189)
  br label %191

191:                                              ; preds = %188, %155
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %13, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %59

198:                                              ; preds = %191
  %199 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %200 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %199, %struct.btrfs_key* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %150
  store i32 0, i32* %7, align 4
  br label %205

204:                                              ; preds = %29
  store i32 1, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %203, %124, %79, %42
  %206 = load i32, i32* %7, align 4
  ret i32 %206
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @btrfs_level_size(%struct.btrfs_root*, i32) #1

declare dso_local i64 @btrfs_buffer_uptodate(%struct.extent_buffer*, i64, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
