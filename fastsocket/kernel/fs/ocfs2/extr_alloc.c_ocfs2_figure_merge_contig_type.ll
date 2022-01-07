; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_merge_contig_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_merge_contig_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { i32 }
%struct.super_block = type { i32 }

@CONTIG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Extent block #%llu has an invalid l_next_free_rec of %d.  It should have matched the l_count of %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONTIG_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Extent block #%llu has an invalid l_next_free_rec of %d\00", align 1
@CONTIG_LEFT = common dso_local global i32 0, align 4
@CONTIG_LEFTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_list*, i32, %struct.ocfs2_extent_rec*)* @ocfs2_figure_merge_contig_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_figure_merge_contig_type(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_path* %1, %struct.ocfs2_extent_list* %2, i32 %3, %struct.ocfs2_extent_rec* %4) #0 {
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_extent_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_extent_rec*, align 8
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  %17 = alloca %struct.ocfs2_path*, align 8
  %18 = alloca %struct.ocfs2_path*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_extent_block*, align 8
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca i32, align 4
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_list** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ocfs2_extent_rec* %4, %struct.ocfs2_extent_rec** %10, align 8
  %23 = load i32, i32* @CONTIG_NONE, align 4
  store i32 %23, i32* %12, align 4
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %15, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %17, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %18, align 8
  %24 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %26)
  store %struct.super_block* %27, %struct.super_block** %21, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %31, i32 0, i32 0
  %33 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %33, i64 %36
  store %struct.ocfs2_extent_rec* %37, %struct.ocfs2_extent_rec** %15, align 8
  br label %117

38:                                               ; preds = %5
  %39 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %116

43:                                               ; preds = %38
  %44 = load %struct.super_block*, %struct.super_block** %21, align 8
  %45 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %46 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %44, %struct.ocfs2_path* %45, i64* %13)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %275

50:                                               ; preds = %43
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %115

53:                                               ; preds = %50
  %54 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %55 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %54)
  store %struct.ocfs2_path* %55, %struct.ocfs2_path** %17, align 8
  %56 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %57 = icmp ne %struct.ocfs2_path* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %275

59:                                               ; preds = %53
  %60 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @ocfs2_find_path(i32 %62, %struct.ocfs2_path* %63, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %275

69:                                               ; preds = %59
  %70 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %71 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %70)
  store %struct.ocfs2_extent_list* %71, %struct.ocfs2_extent_list** %16, align 8
  %72 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %69
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %83 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %82)
  store %struct.buffer_head* %83, %struct.buffer_head** %19, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %87, %struct.ocfs2_extent_block** %20, align 8
  %88 = load %struct.super_block*, %struct.super_block** %21, align 8
  %89 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %20, align 8
  %90 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le64_to_cpu(i32 %91)
  %93 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %94 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %98 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = call i32 (%struct.super_block*, i8*, i64, i32, ...) @ocfs2_error(%struct.super_block* %88, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %92, i32 %96, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %275

104:                                              ; preds = %69
  %105 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %105, i32 0, i32 0
  %107 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %106, align 8
  %108 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %107, i64 %113
  store %struct.ocfs2_extent_rec* %114, %struct.ocfs2_extent_rec** %15, align 8
  br label %115

115:                                              ; preds = %104, %50
  br label %116

116:                                              ; preds = %115, %38
  br label %117

117:                                              ; preds = %116, %30
  %118 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %119 = icmp ne %struct.ocfs2_extent_rec* %118, null
  br i1 %119, label %120, label %149

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %125 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %129 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %131, i32 0, i32 0
  %133 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %133, i64 %135
  %137 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %130, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @CONTIG_RIGHT, align 4
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %140, %127
  br label %148

143:                                              ; preds = %123, %120
  %144 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %145 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %146 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %147 = call i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree* %144, %struct.ocfs2_extent_rec* %145, %struct.ocfs2_extent_rec* %146)
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %143, %142
  br label %149

149:                                              ; preds = %148, %117
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %15, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %152 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %159 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %158, i32 0, i32 0
  %160 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %160, i64 %163
  store %struct.ocfs2_extent_rec* %164, %struct.ocfs2_extent_rec** %15, align 8
  br label %249

165:                                              ; preds = %149
  %166 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %167 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %171 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = icmp eq i32 %169, %173
  br i1 %174, label %175, label %248

175:                                              ; preds = %165
  %176 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %177 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %180, label %248

180:                                              ; preds = %175
  %181 = load %struct.super_block*, %struct.super_block** %21, align 8
  %182 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %183 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %181, %struct.ocfs2_path* %182, i64* %14)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %275

187:                                              ; preds = %180
  %188 = load i64, i64* %14, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %275

191:                                              ; preds = %187
  %192 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %193 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %192)
  store %struct.ocfs2_path* %193, %struct.ocfs2_path** %18, align 8
  %194 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %195 = icmp ne %struct.ocfs2_path* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %275

197:                                              ; preds = %191
  %198 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %199 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %202 = load i64, i64* %14, align 8
  %203 = call i32 @ocfs2_find_path(i32 %200, %struct.ocfs2_path* %201, i64 %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  br label %275

207:                                              ; preds = %197
  %208 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %209 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %208)
  store %struct.ocfs2_extent_list* %209, %struct.ocfs2_extent_list** %16, align 8
  %210 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %211 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %210, i32 0, i32 0
  %212 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %211, align 8
  %213 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %212, i64 0
  store %struct.ocfs2_extent_rec* %213, %struct.ocfs2_extent_rec** %15, align 8
  %214 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %215 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %247

217:                                              ; preds = %207
  %218 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %219 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @le16_to_cpu(i32 %220)
  %222 = icmp sle i32 %221, 1
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %225 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %224)
  store %struct.buffer_head* %225, %struct.buffer_head** %19, align 8
  %226 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %227 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %229, %struct.ocfs2_extent_block** %20, align 8
  %230 = load %struct.super_block*, %struct.super_block** %21, align 8
  %231 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %20, align 8
  %232 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @le64_to_cpu(i32 %233)
  %235 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %236 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @le16_to_cpu(i32 %237)
  %239 = call i32 (%struct.super_block*, i8*, i64, i32, ...) @ocfs2_error(%struct.super_block* %230, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %234, i32 %238)
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %11, align 4
  br label %275

242:                                              ; preds = %217
  %243 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %244 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %243, i32 0, i32 0
  %245 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %244, align 8
  %246 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %245, i64 1
  store %struct.ocfs2_extent_rec* %246, %struct.ocfs2_extent_rec** %15, align 8
  br label %247

247:                                              ; preds = %242, %207
  br label %248

248:                                              ; preds = %247, %175, %165
  br label %249

249:                                              ; preds = %248, %157
  %250 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %251 = icmp ne %struct.ocfs2_extent_rec* %250, null
  br i1 %251, label %252, label %274

252:                                              ; preds = %249
  %253 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %254 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %255 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %10, align 8
  %256 = call i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree* %253, %struct.ocfs2_extent_rec* %254, %struct.ocfs2_extent_rec* %255)
  store i32 %256, i32* %22, align 4
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* @CONTIG_LEFT, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %252
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @CONTIG_RIGHT, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = load i32, i32* @CONTIG_LEFTRIGHT, align 4
  store i32 %265, i32* %12, align 4
  br label %273

266:                                              ; preds = %260, %252
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @CONTIG_NONE, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i32, i32* %22, align 4
  store i32 %271, i32* %12, align 4
  br label %272

272:                                              ; preds = %270, %266
  br label %273

273:                                              ; preds = %272, %264
  br label %274

274:                                              ; preds = %273, %249
  br label %275

275:                                              ; preds = %274, %223, %206, %196, %190, %186, %81, %68, %58, %49
  %276 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %277 = icmp ne %struct.ocfs2_path* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %280 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %279)
  br label %281

281:                                              ; preds = %278, %275
  %282 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %283 = icmp ne %struct.ocfs2_path* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %286 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32, i32* %12, align 4
  ret i32 %288
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
