; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-defrag.c_btrfs_defrag_leaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_tree-defrag.c_btrfs_defrag_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i64, i32, %struct.btrfs_key, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.btrfs_root* }
%struct.btrfs_path = type { i32, %struct.extent_buffer**, i8** }
%struct.extent_buffer = type { i32 }

@SSD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_defrag_leaves(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca i8*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.btrfs_path* null, %struct.btrfs_path** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %179

22:                                               ; preds = %3
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = icmp eq %struct.btrfs_root* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %179

31:                                               ; preds = %22
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %179

40:                                               ; preds = %36, %31
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = load i32, i32* @SSD, align 4
  %43 = call i64 @btrfs_test_opt(%struct.btrfs_root* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %179

46:                                               ; preds = %40
  %47 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %47, %struct.btrfs_path** %8, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %49 = icmp ne %struct.btrfs_path* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %241

53:                                               ; preds = %46
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @btrfs_header_level(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %179

61:                                               ; preds = %53
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %69 = call %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root* %68)
  store %struct.extent_buffer* %69, %struct.extent_buffer** %17, align 8
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %71 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %70)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %73 = call i8* @btrfs_header_nritems(%struct.extent_buffer* %72)
  store i8* %73, i8** %18, align 8
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %79 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %78, i32 0, i32 3
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr i8, i8* %80, i64 -1
  %82 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %77, %struct.TYPE_4__* %79, i8* %81)
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %84 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %83)
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %86 = call i32 @free_extent_buffer(%struct.extent_buffer* %85)
  %87 = call i32 @memset(%struct.btrfs_key* %9, i32 0, i32 24)
  br label %92

88:                                               ; preds = %61
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %90 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %89, i32 0, i32 2
  %91 = call i32 @memcpy(%struct.btrfs_key* %9, %struct.btrfs_key* %90, i32 24)
  br label %92

92:                                               ; preds = %88, %67
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %99 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @btrfs_search_forward(%struct.btrfs_root* %102, %struct.btrfs_key* %9, i32* null, %struct.btrfs_path* %103, i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %179

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %179

114:                                              ; preds = %110
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %116 = call i32 @btrfs_release_path(%struct.btrfs_path* %115)
  %117 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %120 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %117, %struct.btrfs_root* %118, %struct.btrfs_key* %9, %struct.btrfs_path* %119, i32 0, i32 1)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %10, align 4
  br label %179

125:                                              ; preds = %114
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %127 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %126, i32 0, i32 1
  %128 = load %struct.extent_buffer**, %struct.extent_buffer*** %127, align 8
  %129 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %128, i64 1
  %130 = load %struct.extent_buffer*, %struct.extent_buffer** %129, align 8
  %131 = icmp ne %struct.extent_buffer* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %179

133:                                              ; preds = %125
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %135 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %134, i32 0, i32 1
  %136 = load %struct.extent_buffer**, %struct.extent_buffer*** %135, align 8
  %137 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %136, i64 1
  %138 = load %struct.extent_buffer*, %struct.extent_buffer** %137, align 8
  %139 = call i8* @btrfs_header_nritems(%struct.extent_buffer* %138)
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %141 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %140, i32 0, i32 2
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  store i8* %139, i8** %143, align 8
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %145 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @btrfs_find_next_key(%struct.btrfs_root* %144, %struct.btrfs_path* %145, %struct.btrfs_key* %9, i32 1, i32 %146, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %152 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %151, i32 0, i32 1
  %153 = load %struct.extent_buffer**, %struct.extent_buffer*** %152, align 8
  %154 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %153, i64 1
  %155 = load %struct.extent_buffer*, %struct.extent_buffer** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 2
  %159 = call i32 @btrfs_realloc_node(%struct.btrfs_trans_handle* %149, %struct.btrfs_root* %150, %struct.extent_buffer* %155, i32 0, i32 %156, i32* %15, %struct.btrfs_key* %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %133
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @EAGAIN, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @WARN_ON(i32 %167)
  br label %179

169:                                              ; preds = %133
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %174 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %173, i32 0, i32 2
  %175 = call i32 @memcpy(%struct.btrfs_key* %174, %struct.btrfs_key* %9, i32 24)
  %176 = load i32, i32* @EAGAIN, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %172, %169
  br label %179

179:                                              ; preds = %178, %162, %132, %123, %113, %109, %60, %45, %39, %30, %21
  %180 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %181 = icmp ne %struct.btrfs_path* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %184 = call i32 @btrfs_free_path(%struct.btrfs_path* %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @EAGAIN, align 4
  %188 = sub nsw i32 0, %187
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %224

190:                                              ; preds = %185
  %191 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %192 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %196 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %194, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %225

201:                                              ; preds = %190
  %202 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %203 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %207 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %205, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %225

212:                                              ; preds = %201
  %213 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %214 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %218 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %216, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %225

223:                                              ; preds = %212
  store i32 0, i32* %10, align 4
  br label %224

224:                                              ; preds = %223, %185
  br label %225

225:                                              ; preds = %224, %222, %211, %200
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @EAGAIN, align 4
  %228 = sub nsw i32 0, %227
  %229 = icmp ne i32 %226, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %225
  %231 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %232 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %231, i32 0, i32 2
  %233 = call i32 @memset(%struct.btrfs_key* %232, i32 0, i32 24)
  %234 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %235 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %238 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %230, %225
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %50
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i8* @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @memset(%struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_search_forward(%struct.btrfs_root*, %struct.btrfs_key*, i32*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_find_next_key(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32, i32) #1

declare dso_local i32 @btrfs_realloc_node(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, i32, i32, i32*, %struct.btrfs_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
