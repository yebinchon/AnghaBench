; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_realloc_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_realloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64, i64 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.extent_buffer = type { i64 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_realloc_node(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, i32 %3, i32 %4, i64* %5, %struct.btrfs_key* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.btrfs_key*, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.btrfs_disk_key, align 4
  %31 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store %struct.btrfs_key* %6, %struct.btrfs_key** %15, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %29, align 4
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %35 = call i32 @btrfs_header_level(%struct.extent_buffer* %34)
  store i32 %35, i32* %26, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %7
  %39 = load i32, i32* %26, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %246

42:                                               ; preds = %38, %7
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %44 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @WARN_ON(i32 1)
  br label %54

54:                                               ; preds = %52, %42
  %55 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %56 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @WARN_ON(i32 1)
  br label %66

66:                                               ; preds = %64, %54
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %68 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %67)
  store i32 %68, i32* %22, align 4
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %70 = load i32, i32* %26, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @btrfs_level_size(%struct.btrfs_root* %69, i32 %71)
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %22, align 4
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %22, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %246

77:                                               ; preds = %66
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %79 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %24, align 4
  br label %81

81:                                               ; preds = %241, %77
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %23, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %244

85:                                               ; preds = %81
  store i32 1, i32* %31, align 4
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %87 = load i32, i32* %24, align 4
  %88 = call i32 @btrfs_node_key(%struct.extent_buffer* %86, %struct.btrfs_disk_key* %30, i32 %87)
  %89 = load i32, i32* %29, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load %struct.btrfs_key*, %struct.btrfs_key** %15, align 8
  %93 = call i64 @comp_keys(%struct.btrfs_disk_key* %30, %struct.btrfs_key* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %241

96:                                               ; preds = %91, %85
  store i32 1, i32* %29, align 4
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %98 = load i32, i32* %24, align 4
  %99 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %97, i32 %98)
  store i64 %99, i64* %17, align 8
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %101 = load i32, i32* %24, align 4
  %102 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %100, i32 %101)
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %20, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i64, i64* %17, align 8
  store i64 %106, i64* %20, align 8
  br label %107

107:                                              ; preds = %105, %96
  %108 = load i32, i32* %24, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %112 = load i32, i32* %24, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %111, i32 %113)
  store i64 %114, i64* %21, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i32, i32* %28, align 4
  %118 = call i32 @close_blocks(i64 %115, i64 %116, i32 %117)
  store i32 %118, i32* %31, align 4
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %31, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %23, align 4
  %125 = sub nsw i32 %124, 2
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %129 = load i32, i32* %24, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %128, i32 %130)
  store i64 %131, i64* %21, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i32, i32* %28, align 4
  %135 = call i32 @close_blocks(i64 %132, i64 %133, i32 %134)
  store i32 %135, i32* %31, align 4
  br label %136

136:                                              ; preds = %127, %122, %119
  %137 = load i32, i32* %31, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i64, i64* %17, align 8
  store i64 %140, i64* %20, align 8
  br label %241

141:                                              ; preds = %136
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i32, i32* %28, align 4
  %145 = call %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root* %142, i64 %143, i32 %144)
  store %struct.extent_buffer* %145, %struct.extent_buffer** %16, align 8
  %146 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %147 = icmp ne %struct.extent_buffer* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %150 = load i64, i64* %18, align 8
  %151 = call i32 @btrfs_buffer_uptodate(%struct.extent_buffer* %149, i64 %150, i32 0)
  store i32 %151, i32* %27, align 4
  br label %153

152:                                              ; preds = %141
  store i32 0, i32* %27, align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %155 = icmp ne %struct.extent_buffer* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %27, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %196, label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %164 = call i32 @free_extent_buffer(%struct.extent_buffer* %163)
  br label %241

165:                                              ; preds = %159
  %166 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %167 = icmp ne %struct.extent_buffer* %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i32, i32* %28, align 4
  %172 = load i64, i64* %18, align 8
  %173 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_root* %169, i64 %170, i32 %171, i64 %172)
  store %struct.extent_buffer* %173, %struct.extent_buffer** %16, align 8
  %174 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %175 = icmp ne %struct.extent_buffer* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %8, align 4
  br label %246

179:                                              ; preds = %168
  br label %195

180:                                              ; preds = %165
  %181 = load i32, i32* %27, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %185 = load i64, i64* %18, align 8
  %186 = call i32 @btrfs_read_buffer(%struct.extent_buffer* %184, i64 %185)
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %25, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %191 = call i32 @free_extent_buffer(%struct.extent_buffer* %190)
  %192 = load i32, i32* %25, align 4
  store i32 %192, i32* %8, align 4
  br label %246

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %180
  br label %195

195:                                              ; preds = %194, %179
  br label %196

196:                                              ; preds = %195, %156
  %197 = load i64, i64* %19, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i64, i64* %20, align 8
  store i64 %200, i64* %19, align 8
  br label %201

201:                                              ; preds = %199, %196
  %202 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %203 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %202)
  %204 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %205 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %204)
  %206 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %207 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %208 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %209 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %210 = load i32, i32* %24, align 4
  %211 = load i64, i64* %19, align 8
  %212 = load i32, i32* %28, align 4
  %213 = mul nsw i32 16, %212
  %214 = load i32, i32* %23, align 4
  %215 = load i32, i32* %24, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* %28, align 4
  %218 = mul nsw i32 %216, %217
  %219 = call i32 @min(i32 %213, i32 %218)
  %220 = call i32 @__btrfs_cow_block(%struct.btrfs_trans_handle* %206, %struct.btrfs_root* %207, %struct.extent_buffer* %208, %struct.extent_buffer* %209, i32 %210, %struct.extent_buffer** %16, i64 %211, i32 %219)
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* %25, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %201
  %224 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %225 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %224)
  %226 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %227 = call i32 @free_extent_buffer(%struct.extent_buffer* %226)
  br label %244

228:                                              ; preds = %201
  %229 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %230 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %19, align 8
  %232 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %233 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %20, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64*, i64** %14, align 8
  store i64 %235, i64* %236, align 8
  %237 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %238 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %237)
  %239 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %240 = call i32 @free_extent_buffer(%struct.extent_buffer* %239)
  br label %241

241:                                              ; preds = %228, %162, %139, %95
  %242 = load i32, i32* %24, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %24, align 4
  br label %81

244:                                              ; preds = %223, %81
  %245 = load i32, i32* %25, align 4
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %244, %189, %176, %76, %41
  %247 = load i32, i32* %8, align 4
  ret i32 %247
}

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_level_size(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i64 @comp_keys(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i64 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @close_blocks(i64, i64, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @btrfs_buffer_uptodate(%struct.extent_buffer*, i64, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_root*, i64, i32, i64) #1

declare dso_local i32 @btrfs_read_buffer(%struct.extent_buffer*, i64) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @__btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
