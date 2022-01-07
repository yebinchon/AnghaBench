; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_truncate_btree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_truncate_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { %struct.bplus_header }
%struct.bplus_header = type { i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.anode = type { %struct.bplus_header }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"internal btree %08x doesn't end with -1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hpfs_truncate_btree\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"there is an allocation error in file %08x, sector %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_truncate_btree(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fnode*, align 8
  %10 = alloca %struct.anode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.bplus_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %23, i32 %24, %struct.buffer_head** %11)
  store %struct.fnode* %25, %struct.fnode** %9, align 8
  %26 = icmp ne %struct.fnode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %412

28:                                               ; preds = %22
  %29 = load %struct.fnode*, %struct.fnode** %9, align 8
  %30 = getelementptr inbounds %struct.fnode, %struct.fnode* %29, i32 0, i32 0
  store %struct.bplus_header* %30, %struct.bplus_header** %12, align 8
  br label %40

31:                                               ; preds = %4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %32, i32 %33, %struct.buffer_head** %11)
  store %struct.anode* %34, %struct.anode** %10, align 8
  %35 = icmp ne %struct.anode* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %412

37:                                               ; preds = %31
  %38 = load %struct.anode*, %struct.anode** %10, align 8
  %39 = getelementptr inbounds %struct.anode, %struct.anode* %38, i32 0, i32 0
  store %struct.bplus_header* %39, %struct.bplus_header** %12, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %46 = call i32 @hpfs_remove_btree(%struct.super_block* %44, %struct.bplus_header* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %51 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %50, i32 0, i32 0
  store i32 8, i32* %51, align 8
  %52 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %53 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %55 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %54, i32 0, i32 2
  store i32 8, i32* %55, align 8
  %56 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %57 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %59 = call i32 @mark_buffer_dirty(%struct.buffer_head* %58)
  br label %64

60:                                               ; preds = %43
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @hpfs_free_sectors(%struct.super_block* %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  br label %412

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %199, %67
  %69 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %70 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %202

73:                                               ; preds = %68
  %74 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %75 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %78 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %101, %73
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %84 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %89 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %110

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %106 = call i32 @brelse(%struct.buffer_head* %105)
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %412

110:                                              ; preds = %99
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %131, %110
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %116 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %122 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @hpfs_ea_remove(%struct.super_block* %120, i32 %129, i32 1, i32 0)
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %113

134:                                              ; preds = %113
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  %137 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %138 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %141 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %139, %142
  %144 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %145 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %147 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 8, %148
  %150 = add nsw i32 8, %149
  %151 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %152 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %154 = call i32 @mark_buffer_dirty(%struct.buffer_head* %153)
  %155 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %156 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %134
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = call i32 @brelse(%struct.buffer_head* %167)
  br label %412

169:                                              ; preds = %134
  %170 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %171 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %13, align 4
  %179 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %180 = call i32 @brelse(%struct.buffer_head* %179)
  %181 = load %struct.super_block*, %struct.super_block** %5, align 8
  %182 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %181)
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %169
  %187 = load %struct.super_block*, %struct.super_block** %5, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i64 @hpfs_stop_cycles(%struct.super_block* %187, i32 %188, i32* %17, i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %412

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %169
  %194 = load %struct.super_block*, %struct.super_block** %5, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %194, i32 %195, %struct.buffer_head** %11)
  store %struct.anode* %196, %struct.anode** %10, align 8
  %197 = icmp ne %struct.anode* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %412

199:                                              ; preds = %193
  %200 = load %struct.anode*, %struct.anode** %10, align 8
  %201 = getelementptr inbounds %struct.anode, %struct.anode* %200, i32 0, i32 0
  store %struct.bplus_header* %201, %struct.bplus_header** %12, align 8
  br label %68

202:                                              ; preds = %68
  %203 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %204 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %207 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %240, %202
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %213 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %243

216:                                              ; preds = %210
  %217 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %218 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %227 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %225, %234
  %236 = load i32, i32* %8, align 4
  %237 = icmp uge i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %216
  br label %246

239:                                              ; preds = %216
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %210

243:                                              ; preds = %210
  %244 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %245 = call i32 @brelse(%struct.buffer_head* %244)
  br label %412

246:                                              ; preds = %238
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %249 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp ule i32 %247, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %246
  %259 = load %struct.super_block*, %struct.super_block** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %259, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %260, i32 %261)
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %14, align 4
  br label %268

268:                                              ; preds = %265, %258
  br label %356

269:                                              ; preds = %246
  %270 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %271 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %280 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %278, %287
  %289 = load i32, i32* %8, align 4
  %290 = icmp ugt i32 %288, %289
  br i1 %290, label %291, label %355

291:                                              ; preds = %269
  %292 = load %struct.super_block*, %struct.super_block** %5, align 8
  %293 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %294 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = add i32 %301, %302
  %304 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %305 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load i32, i32* %14, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sub i32 %303, %312
  %314 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %315 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = load i32, i32* %14, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %8, align 4
  %324 = sub i32 %322, %323
  %325 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %326 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %324, %333
  %335 = call i32 @hpfs_free_sectors(%struct.super_block* %292, i32 %313, i32 %334)
  %336 = load i32, i32* %8, align 4
  %337 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %338 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %14, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = sub i32 %336, %345
  %347 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %348 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = load i32, i32* %14, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  store i32 %346, i32* %354, align 4
  br label %355

355:                                              ; preds = %291, %269
  br label %356

356:                                              ; preds = %355, %268
  %357 = load i32, i32* %14, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %15, align 4
  br label %359

359:                                              ; preds = %386, %356
  %360 = load i32, i32* %15, align 4
  %361 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %362 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %389

365:                                              ; preds = %359
  %366 = load %struct.super_block*, %struct.super_block** %5, align 8
  %367 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %368 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %369, align 8
  %371 = load i32, i32* %15, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %377 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %378, align 8
  %380 = load i32, i32* %15, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @hpfs_free_sectors(%struct.super_block* %366, i32 %375, i32 %384)
  br label %386

386:                                              ; preds = %365
  %387 = load i32, i32* %15, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %15, align 4
  br label %359

389:                                              ; preds = %359
  %390 = load i32, i32* %14, align 4
  %391 = add nsw i32 %390, 1
  %392 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %393 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %16, align 4
  %395 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %396 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 %394, %397
  %399 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %400 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %399, i32 0, i32 0
  store i32 %398, i32* %400, align 8
  %401 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %402 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = mul nsw i32 12, %403
  %405 = add nsw i32 8, %404
  %406 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %407 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %406, i32 0, i32 2
  store i32 %405, i32* %407, align 8
  %408 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %409 = call i32 @mark_buffer_dirty(%struct.buffer_head* %408)
  %410 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %411 = call i32 @brelse(%struct.buffer_head* %410)
  br label %412

412:                                              ; preds = %389, %243, %198, %191, %166, %104, %64, %36, %27
  ret void
}

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, %struct.bplus_header*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
