; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_layout_in_empty_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_layout_in_empty_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, i64, i32*, i32, %struct.TYPE_4__*, %struct.ubifs_znode*, i32, %struct.TYPE_3__, i32, %struct.ubifs_znode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ubifs_znode = type { i32, i32, i32, i32, i32, %struct.ubifs_znode*, %struct.ubifs_zbranch*, %struct.ubifs_znode* }
%struct.ubifs_zbranch = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @layout_in_empty_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_in_empty_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_zbranch*, align 8
  %19 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 13
  %22 = load %struct.ubifs_znode*, %struct.ubifs_znode** %21, align 8
  store %struct.ubifs_znode* %22, %struct.ubifs_znode** %5, align 8
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %24 = icmp ne %struct.ubifs_znode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %317

26:                                               ; preds = %1
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ALIGN(i32 %38, i32 %41)
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %176, %190, %232, %295
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %59, %struct.ubifs_znode** %4, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %62 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %60, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %90

67:                                               ; preds = %58
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = call i32 @ubifs_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOSPC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %317

79:                                               ; preds = %67
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %85
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %79, %58
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %95 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %94, i32 0, i32 7
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %95, align 8
  store %struct.ubifs_znode* %96, %struct.ubifs_znode** %6, align 8
  %97 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %98 = icmp ne %struct.ubifs_znode* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %90
  %100 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %101 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %104 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %103, i32 0, i32 6
  %105 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %104, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %105, i64 %107
  store %struct.ubifs_zbranch* %108, %struct.ubifs_zbranch** %18, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %111 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %114 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %117 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %131

118:                                              ; preds = %90
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 11
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %118, %99
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @ALIGN(i32 %132, i32 8)
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 10
  %140 = call i32 @atomic_long_dec(i32* %139)
  %141 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %142 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %141, i32 0, i32 5
  %143 = load %struct.ubifs_znode*, %struct.ubifs_znode** %142, align 8
  store %struct.ubifs_znode* %143, %struct.ubifs_znode** %5, align 8
  %144 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %146 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %145, i32 0, i32 9
  %147 = load %struct.ubifs_znode*, %struct.ubifs_znode** %146, align 8
  %148 = icmp eq %struct.ubifs_znode* %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  br label %156

150:                                              ; preds = %131
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %152 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %153 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %151, i32 %154)
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %150, %149
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %205

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @ALIGN(i32 %162, i32 8)
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %161
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp sle i32 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %58

177:                                              ; preds = %168
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %12, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %178, i32 %179, i32 0, i32 %184, i32 0, i32 0)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %2, align 4
  br label %317

190:                                              ; preds = %177
  store i32 -1, i32* %7, align 4
  br label %58

191:                                              ; preds = %161
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 %196, %197
  %199 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %192, i32 %193, i32 %198, i32 0, i32 0, i32 0)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %2, align 4
  br label %317

204:                                              ; preds = %191
  br label %316

205:                                              ; preds = %156
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %206, %207
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @ALIGN(i32 %209, i32 8)
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @ALIGN(i32 %213, i32 8)
  %215 = load i32, i32* %14, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %205
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %222, %223
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp sle i32 %224, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %219
  %230 = load i32, i32* %14, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %58

233:                                              ; preds = %229, %219, %205
  %234 = load i32, i32* %14, align 4
  %235 = icmp sle i32 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %242, %243
  %245 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %246 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = icmp sle i32 %244, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = load i32, i32* %11, align 4
  store i32 %250, i32* %16, align 4
  br label %257

251:                                              ; preds = %239, %236, %233
  %252 = load i32, i32* %15, align 4
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ALIGN(i32 %252, i32 %255)
  store i32 %256, i32* %16, align 4
  br label %257

257:                                              ; preds = %251, %249
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %299

263:                                              ; preds = %257
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %264, %265
  %267 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %268 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = icmp sgt i32 %266, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %263
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %273 = load i32, i32* %7, align 4
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %275 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %12, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %13, align 4
  %281 = sub nsw i32 %279, %280
  %282 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %272, i32 %273, i32 %278, i32 %281, i32 0, i32 0)
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %17, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %271
  %286 = load i32, i32* %17, align 4
  store i32 %286, i32* %2, align 4
  br label %317

287:                                              ; preds = %271
  store i32 -1, i32* %7, align 4
  br label %288

288:                                              ; preds = %287, %263
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %13, align 4
  %291 = sub nsw i32 %290, %289
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %294, %288
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %13, align 4
  %298 = sub nsw i32 %296, %297
  store i32 %298, i32* %14, align 4
  br label %58

299:                                              ; preds = %257
  %300 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %303 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %12, align 4
  %306 = sub nsw i32 %304, %305
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %307, %308
  %310 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %300, i32 %301, i32 %306, i32 %309, i32 0, i32 0)
  store i32 %310, i32* %17, align 4
  %311 = load i32, i32* %17, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %299
  %314 = load i32, i32* %17, align 4
  store i32 %314, i32* %2, align 4
  br label %317

315:                                              ; preds = %299
  br label %316

316:                                              ; preds = %315, %204
  store i32 0, i32* %2, align 4
  br label %317

317:                                              ; preds = %316, %313, %285, %202, %188, %75, %25
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @ubifs_update_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
