; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_search_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_search_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32, i32*, i32*, i32, i32, %struct.extent_buffer**, i64, i64, i64 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i8* null, align 8
@BTRFS_WRITE_LOCK = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_key* %2, %struct.btrfs_path* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %21, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %29, %6
  %33 = phi i1 [ false, %6 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 5
  %38 = load %struct.extent_buffer**, %struct.extent_buffer*** %37, align 8
  %39 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %38, i64 0
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %39, align 8
  %41 = icmp ne %struct.extent_buffer* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 2, i32* %18, align 4
  store i32 2, i32* %20, align 4
  br label %52

47:                                               ; preds = %32
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %20, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 -1, i32* %20, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %69, %64, %56
  %72 = load i32, i32* %20, align 4
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %424, %333, %294, %263, %170, %71
  %74 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %19, align 4
  store i32 0, i32* %17, align 4
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %82 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %81, i32 0, i32 0
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %82, align 8
  store %struct.extent_buffer* %83, %struct.extent_buffer** %13, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %85 = call i32 @extent_buffer_get(%struct.extent_buffer* %84)
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %87 = call i32 @btrfs_header_level(%struct.extent_buffer* %86)
  store i32 %87, i32* %17, align 4
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %89 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %94 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %93)
  br label %95

95:                                               ; preds = %92, %80
  br label %127

96:                                               ; preds = %73
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %98 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %103 = call %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root* %102)
  store %struct.extent_buffer* %103, %struct.extent_buffer** %13, align 8
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %105 = call i32 @btrfs_header_level(%struct.extent_buffer* %104)
  store i32 %105, i32* %17, align 4
  br label %126

106:                                              ; preds = %96
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %108 = call %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root* %107)
  store %struct.extent_buffer* %108, %struct.extent_buffer** %13, align 8
  %109 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %110 = call i32 @btrfs_header_level(%struct.extent_buffer* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %116 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %115)
  %117 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %118 = call i32 @free_extent_buffer(%struct.extent_buffer* %117)
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %120 = call %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root* %119)
  store %struct.extent_buffer* %120, %struct.extent_buffer** %13, align 8
  %121 = load i8*, i8** @BTRFS_WRITE_LOCK, align 8
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %19, align 4
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %124 = call i32 @btrfs_header_level(%struct.extent_buffer* %123)
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %114, %106
  br label %126

126:                                              ; preds = %125, %101
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %129 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %130 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %129, i32 0, i32 5
  %131 = load %struct.extent_buffer**, %struct.extent_buffer*** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %131, i64 %133
  store %struct.extent_buffer* %128, %struct.extent_buffer** %134, align 8
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %136 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %19, align 4
  %141 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %142 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %127
  br label %148

148:                                              ; preds = %462, %147
  %149 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %150 = icmp ne %struct.extent_buffer* %149, null
  br i1 %150, label %151, label %463

151:                                              ; preds = %148
  %152 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %153 = call i32 @btrfs_header_level(%struct.extent_buffer* %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %151
  %157 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %159 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %160 = call i32 @should_cow_block(%struct.btrfs_trans_handle* %157, %struct.btrfs_root* %158, %struct.extent_buffer* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  br label %202

163:                                              ; preds = %156
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %165 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %164)
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %20, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  %173 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %174 = call i32 @btrfs_release_path(%struct.btrfs_path* %173)
  br label %73

175:                                              ; preds = %163
  %176 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %178 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %179 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %180 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %179, i32 0, i32 5
  %181 = load %struct.extent_buffer**, %struct.extent_buffer*** %180, align 8
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %181, i64 %184
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %185, align 8
  %187 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %188 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %176, %struct.btrfs_root* %177, %struct.extent_buffer* %178, %struct.extent_buffer* %186, i32 %194, %struct.extent_buffer** %13)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %175
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %15, align 4
  br label %464

200:                                              ; preds = %175
  br label %201

201:                                              ; preds = %200, %151
  br label %202

202:                                              ; preds = %201, %162
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br label %208

208:                                              ; preds = %205, %202
  %209 = phi i1 [ false, %202 ], [ %207, %205 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @BUG_ON(i32 %210)
  %212 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %213 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %214 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %213, i32 0, i32 5
  %215 = load %struct.extent_buffer**, %struct.extent_buffer*** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %215, i64 %217
  store %struct.extent_buffer* %212, %struct.extent_buffer** %218, align 8
  %219 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %220 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %219, %struct.extent_buffer* null, i8* null)
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %208
  %224 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  %227 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %224, i32 %226)
  br label %228

228:                                              ; preds = %223, %208
  %229 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %230 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @bin_search(%struct.extent_buffer* %229, %struct.btrfs_key* %230, i32 %231, i32* %14)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %405

235:                                              ; preds = %228
  store i32 0, i32* %23, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load i32, i32* %14, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  store i32 1, i32* %23, align 4
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %241, %238, %235
  %245 = load i32, i32* %14, align 4
  %246 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %247 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %245, i32* %251, align 4
  %252 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %253 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %254 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %255 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @setup_nodes_for_search(%struct.btrfs_trans_handle* %252, %struct.btrfs_root* %253, %struct.btrfs_path* %254, %struct.extent_buffer* %255, i32 %256, i32 %257, i32* %20)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* @EAGAIN, align 4
  %261 = sub nsw i32 0, %260
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %244
  br label %73

264:                                              ; preds = %244
  %265 = load i32, i32* %16, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load i32, i32* %16, align 4
  store i32 %268, i32* %15, align 4
  br label %464

269:                                              ; preds = %264
  %270 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %271 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %270, i32 0, i32 5
  %272 = load %struct.extent_buffer**, %struct.extent_buffer*** %271, align 8
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %272, i64 %274
  %276 = load %struct.extent_buffer*, %struct.extent_buffer** %275, align 8
  store %struct.extent_buffer* %276, %struct.extent_buffer** %13, align 8
  %277 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %278 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %269
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %291, 1
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load i32, i32* %17, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %20, align 4
  %297 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %298 = call i32 @btrfs_release_path(%struct.btrfs_path* %297)
  br label %73

299:                                              ; preds = %289, %286, %269
  %300 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @unlock_up(%struct.btrfs_path* %300, i32 %301, i32 %302, i32 %303, i32* %20)
  %305 = load i32, i32* %17, align 4
  %306 = load i32, i32* %21, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %321

308:                                              ; preds = %299
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %313 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %311, %308
  br label %464

321:                                              ; preds = %299
  %322 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %323 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %324 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %14, align 4
  %327 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %328 = call i32 @read_block_for_search(%struct.btrfs_trans_handle* %322, %struct.btrfs_root* %323, %struct.btrfs_path* %324, %struct.extent_buffer** %13, i32 %325, i32 %326, %struct.btrfs_key* %327, i32 0)
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* @EAGAIN, align 4
  %331 = sub nsw i32 0, %330
  %332 = icmp eq i32 %329, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %321
  br label %73

334:                                              ; preds = %321
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %334
  %338 = load i32, i32* %16, align 4
  store i32 %338, i32* %15, align 4
  br label %464

339:                                              ; preds = %334
  %340 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %341 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %340, i32 0, i32 6
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %404, label %344

344:                                              ; preds = %339
  %345 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %346 = call i32 @btrfs_header_level(%struct.extent_buffer* %345)
  store i32 %346, i32* %17, align 4
  %347 = load i32, i32* %17, align 4
  %348 = load i32, i32* %20, align 4
  %349 = icmp sle i32 %347, %348
  br i1 %349, label %350, label %373

350:                                              ; preds = %344
  %351 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %352 = call i32 @btrfs_try_tree_write_lock(%struct.extent_buffer* %351)
  store i32 %352, i32* %16, align 4
  %353 = load i32, i32* %16, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %364, label %355

355:                                              ; preds = %350
  %356 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %357 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %356)
  %358 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %359 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %358)
  %360 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %361 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %362 = load i8*, i8** @BTRFS_WRITE_LOCK, align 8
  %363 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %360, %struct.extent_buffer* %361, i8* %362)
  br label %364

364:                                              ; preds = %355, %350
  %365 = load i8*, i8** @BTRFS_WRITE_LOCK, align 8
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %368 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %17, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  store i32 %366, i32* %372, align 4
  br label %396

373:                                              ; preds = %344
  %374 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %375 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %374)
  store i32 %375, i32* %16, align 4
  %376 = load i32, i32* %16, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %387, label %378

378:                                              ; preds = %373
  %379 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %380 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %379)
  %381 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %382 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %381)
  %383 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %384 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %385 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %386 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %383, %struct.extent_buffer* %384, i8* %385)
  br label %387

387:                                              ; preds = %378, %373
  %388 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %389 = ptrtoint i8* %388 to i32
  %390 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %391 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %17, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 %389, i32* %395, align 4
  br label %396

396:                                              ; preds = %387, %364
  %397 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %398 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %399 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %398, i32 0, i32 5
  %400 = load %struct.extent_buffer**, %struct.extent_buffer*** %399, align 8
  %401 = load i32, i32* %17, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %400, i64 %402
  store %struct.extent_buffer* %397, %struct.extent_buffer** %403, align 8
  br label %404

404:                                              ; preds = %396, %339
  br label %462

405:                                              ; preds = %228
  %406 = load i32, i32* %14, align 4
  %407 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %408 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %406, i32* %412, align 4
  %413 = load i32, i32* %11, align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %450

415:                                              ; preds = %405
  %416 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %417 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %418 = call i32 @btrfs_leaf_free_space(%struct.btrfs_root* %416, %struct.extent_buffer* %417)
  %419 = load i32, i32* %11, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %450

421:                                              ; preds = %415
  %422 = load i32, i32* %20, align 4
  %423 = icmp slt i32 %422, 1
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  store i32 1, i32* %20, align 4
  %425 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %426 = call i32 @btrfs_release_path(%struct.btrfs_path* %425)
  br label %73

427:                                              ; preds = %421
  %428 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %429 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %428)
  %430 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %431 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %432 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %433 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* %15, align 4
  %436 = icmp eq i32 %435, 0
  %437 = zext i1 %436 to i32
  %438 = call i32 @split_leaf(%struct.btrfs_trans_handle* %430, %struct.btrfs_root* %431, %struct.btrfs_key* %432, %struct.btrfs_path* %433, i32 %434, i32 %437)
  store i32 %438, i32* %16, align 4
  %439 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %440 = call i32 @btrfs_clear_path_blocking(%struct.btrfs_path* %439, %struct.extent_buffer* null, i8* null)
  %441 = load i32, i32* %16, align 4
  %442 = icmp sgt i32 %441, 0
  %443 = zext i1 %442 to i32
  %444 = call i32 @BUG_ON(i32 %443)
  %445 = load i32, i32* %16, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %427
  %448 = load i32, i32* %16, align 4
  store i32 %448, i32* %15, align 4
  br label %464

449:                                              ; preds = %427
  br label %450

450:                                              ; preds = %449, %415, %405
  %451 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %452 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %461, label %455

455:                                              ; preds = %450
  %456 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %457 = load i32, i32* %17, align 4
  %458 = load i32, i32* %18, align 4
  %459 = load i32, i32* %22, align 4
  %460 = call i32 @unlock_up(%struct.btrfs_path* %456, i32 %457, i32 %458, i32 %459, i32* %20)
  br label %461

461:                                              ; preds = %455, %450
  br label %464

462:                                              ; preds = %404
  br label %148

463:                                              ; preds = %148
  store i32 1, i32* %15, align 4
  br label %464

464:                                              ; preds = %463, %461, %447, %337, %320, %267, %198
  %465 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %466 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %464
  %470 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %471 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %470)
  br label %472

472:                                              ; preds = %469, %464
  %473 = load i32, i32* %15, align 4
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %477 = call i32 @btrfs_release_path(%struct.btrfs_path* %476)
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* %15, align 4
  ret i32 %479
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root*) #1

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @should_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_clear_path_blocking(%struct.btrfs_path*, %struct.extent_buffer*, i8*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @bin_search(%struct.extent_buffer*, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i32 @setup_nodes_for_search(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*, i32, i32, i32*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_block_for_search(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_try_tree_write_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_try_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_leaf_free_space(%struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @split_leaf(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
