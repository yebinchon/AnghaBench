; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_tnc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ubifs_znode*, i32, i32, i32 }
%struct.ubifs_znode = type { i64, i32, i32, i32, i64, %struct.ubifs_znode*, %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"deleting %s\00", align 1
@OBSOLETE_ZNODE = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode*, i32)* @tnc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_delete(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_zbranch*, align 8
  %9 = alloca %struct.ubifs_znode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %13 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubifs_assert(i32 %28)
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %30, i32 0, i32 6
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i64 %34
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 4
  %37 = call i32 @DBGKEY(i32* %36)
  %38 = call i32 @dbg_tnc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %39, i32 0, i32 6
  %41 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %41, i64 %43
  store %struct.ubifs_zbranch* %44, %struct.ubifs_zbranch** %8, align 8
  %45 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %46 = call i32 @lnc_free(%struct.ubifs_zbranch* %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %52 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %47, i32 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %26
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %60 = call i32 @dbg_dump_znode(%struct.ubifs_info* %58, %struct.ubifs_znode* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %338

62:                                               ; preds = %26
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %87, %62
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %67 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %64
  %72 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %73 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %72, i32 0, i32 6
  %74 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %74, i64 %76
  %78 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %79 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %78, i32 0, i32 6
  %80 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %80, i64 %83
  %85 = bitcast %struct.ubifs_zbranch* %77 to i8*
  %86 = bitcast %struct.ubifs_zbranch* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 32, i1 false)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %64

90:                                               ; preds = %64
  %91 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %92 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %96 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %338

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %148, %100
  %102 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %103 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %104 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %103, i32 0, i32 3
  %105 = call i32 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @ubifs_assert(i32 %108)
  %110 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %111 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %110)
  %112 = call i32 @ubifs_assert(i32 %111)
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 5
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %114, align 8
  store %struct.ubifs_znode* %115, %struct.ubifs_znode** %9, align 8
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %117 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 2
  %121 = call i32 @atomic_long_dec(i32* %120)
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %123 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %124 = call i32 @insert_old_idx_znode(%struct.ubifs_info* %122, %struct.ubifs_znode* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %101
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %338

129:                                              ; preds = %101
  %130 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %131 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %136 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %137 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %136, i32 0, i32 3
  %138 = call i32 @__set_bit(i32 %135, i32* %137)
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 1
  %141 = call i32 @atomic_long_inc(i32* %140)
  %142 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  br label %146

143:                                              ; preds = %129
  %144 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %145 = call i32 @kfree(%struct.ubifs_znode* %144)
  br label %146

146:                                              ; preds = %143, %134
  %147 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  store %struct.ubifs_znode* %147, %struct.ubifs_znode** %6, align 8
  br label %148

148:                                              ; preds = %146
  %149 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %150 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %101, label %153

153:                                              ; preds = %148
  %154 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %155 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %159 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @ubifs_assert(i32 %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %208, %153
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %168 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %211

171:                                              ; preds = %165
  %172 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %173 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %172, i32 0, i32 6
  %174 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %174, i64 %176
  %178 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %179 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %178, i32 0, i32 6
  %180 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %180, i64 %183
  %185 = bitcast %struct.ubifs_zbranch* %177 to i8*
  %186 = bitcast %struct.ubifs_zbranch* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 32, i1 false)
  %187 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %188 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %187, i32 0, i32 6
  %189 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %189, i64 %191
  %193 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %192, i32 0, i32 3
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = icmp ne %struct.TYPE_3__* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %171
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %199 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %198, i32 0, i32 6
  %200 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %200, i64 %202
  %204 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %203, i32 0, i32 3
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i32 %197, i32* %206, align 4
  br label %207

207:                                              ; preds = %196, %171
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %165

211:                                              ; preds = %165
  %212 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %213 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %212, i32 0, i32 5
  %214 = load %struct.ubifs_znode*, %struct.ubifs_znode** %213, align 8
  %215 = icmp ne %struct.ubifs_znode* %214, null
  br i1 %215, label %337, label %216

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %335, %216
  %218 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %219 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %224 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i1 [ false, %217 ], [ %226, %222 ]
  br i1 %228, label %229, label %336

229:                                              ; preds = %227
  %230 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %230, %struct.ubifs_znode** %9, align 8
  %231 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %232 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %231, i32 0, i32 6
  %233 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %232, align 8
  %234 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %233, i64 0
  store %struct.ubifs_zbranch* %234, %struct.ubifs_zbranch** %8, align 8
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %236 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %237 = call %struct.ubifs_znode* @get_znode(%struct.ubifs_info* %235, %struct.ubifs_znode* %236, i32 0)
  store %struct.ubifs_znode* %237, %struct.ubifs_znode** %6, align 8
  %238 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %239 = call i64 @IS_ERR(%struct.ubifs_znode* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %229
  %242 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %243 = call i32 @PTR_ERR(%struct.ubifs_znode* %242)
  store i32 %243, i32* %4, align 4
  br label %338

244:                                              ; preds = %229
  %245 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %246 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %247 = call %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %245, %struct.ubifs_zbranch* %246)
  store %struct.ubifs_znode* %247, %struct.ubifs_znode** %6, align 8
  %248 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %249 = call i64 @IS_ERR(%struct.ubifs_znode* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %253 = call i32 @PTR_ERR(%struct.ubifs_znode* %252)
  store i32 %253, i32* %4, align 4
  br label %338

254:                                              ; preds = %244
  %255 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %256 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %255, i32 0, i32 5
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %256, align 8
  %257 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %258 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %257, i32 0, i32 2
  store i32 0, i32* %258, align 4
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %260 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %254
  %265 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %266 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %267 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %271 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @insert_old_idx(%struct.ubifs_info* %265, i32 %269, i32 %273)
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* %11, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %264
  %278 = load i32, i32* %11, align 4
  store i32 %278, i32* %4, align 4
  br label %338

279:                                              ; preds = %264
  br label %280

280:                                              ; preds = %279, %254
  %281 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %282 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 3
  store i32 %283, i32* %286, align 8
  %287 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %288 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %291 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  store i32 %289, i32* %292, align 4
  %293 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %294 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %297 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  store i32 %295, i32* %298, align 8
  %299 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %300 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %301 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  store %struct.ubifs_znode* %299, %struct.ubifs_znode** %302, align 8
  %303 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %304 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %305 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %304, i32 0, i32 3
  %306 = call i32 @test_bit(i32 %303, i32* %305)
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = call i32 @ubifs_assert(i32 %309)
  %311 = load i32, i32* @DIRTY_ZNODE, align 4
  %312 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %313 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %312, i32 0, i32 3
  %314 = call i32 @test_bit(i32 %311, i32* %313)
  %315 = call i32 @ubifs_assert(i32 %314)
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 2
  %318 = call i32 @atomic_long_dec(i32* %317)
  %319 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %320 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %280
  %324 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %325 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %326 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %325, i32 0, i32 3
  %327 = call i32 @__set_bit(i32 %324, i32* %326)
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %329 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %328, i32 0, i32 1
  %330 = call i32 @atomic_long_inc(i32* %329)
  %331 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  br label %335

332:                                              ; preds = %280
  %333 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %334 = call i32 @kfree(%struct.ubifs_znode* %333)
  br label %335

335:                                              ; preds = %332, %323
  br label %217

336:                                              ; preds = %227
  br label %337

337:                                              ; preds = %336, %211
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %337, %277, %251, %241, %127, %99, %57
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32) #1

declare dso_local i32 @DBGKEY(i32*) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @insert_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @get_znode(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info*, %struct.ubifs_zbranch*) #1

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
