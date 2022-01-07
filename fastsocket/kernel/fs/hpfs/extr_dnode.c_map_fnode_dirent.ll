; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_map_fnode_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_map_fnode_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i64, i32, i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.fnode = type { i8*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i64, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HPFS: out of memory, can't map dirent\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"fnode %08x has non-directory parent %08x\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"pointer to dnode %08x not found in dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"map_fnode_dirent #1\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"map_fnode_dirent #2\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"dirent for fnode %08x not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @map_fnode_dirent(%struct.super_block* %0, i64 %1, %struct.fnode* %2, %struct.quad_buffer_head* %3) #0 {
  %5 = alloca %struct.hpfs_dirent*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca %struct.quad_buffer_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dnode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fnode*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.hpfs_dirent*, align 8
  %20 = alloca %struct.hpfs_dirent*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.fnode* %2, %struct.fnode** %8, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %9, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %26 = load %struct.fnode*, %struct.fnode** %8, align 8
  %27 = getelementptr inbounds %struct.fnode, %struct.fnode* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call i8* @kmalloc(i32 256, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

34:                                               ; preds = %4
  %35 = load %struct.fnode*, %struct.fnode** %8, align 8
  %36 = getelementptr inbounds %struct.fnode, %struct.fnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 15
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.fnode*, %struct.fnode** %8, align 8
  %43 = getelementptr inbounds %struct.fnode, %struct.fnode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  store i32 %44, i32* %12, align 4
  %45 = call i32 @memcpy(i8* %40, i8* %41, i32 %44)
  br label %53

46:                                               ; preds = %34
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @memcpy(i8* %47, i8* %48, i32 15)
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 15
  %52 = call i32 @memset(i8* %51, i32 255, i32 241)
  store i32 15, i32* %12, align 4
  store i32 256, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load %struct.fnode*, %struct.fnode** %8, align 8
  %56 = getelementptr inbounds %struct.fnode, %struct.fnode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %54, i32 %57, %struct.buffer_head** %18)
  store %struct.fnode* %58, %struct.fnode** %17, align 8
  %59 = icmp ne %struct.fnode* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @kfree(i8* %61)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

63:                                               ; preds = %53
  %64 = load %struct.fnode*, %struct.fnode** %17, align 8
  %65 = getelementptr inbounds %struct.fnode, %struct.fnode* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = load %struct.super_block*, %struct.super_block** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.fnode*, %struct.fnode** %8, align 8
  %74 = getelementptr inbounds %struct.fnode, %struct.fnode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %72, i32 %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @kfree(i8* %77)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

79:                                               ; preds = %63
  %80 = load %struct.fnode*, %struct.fnode** %17, align 8
  %81 = getelementptr inbounds %struct.fnode, %struct.fnode* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %15, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  br label %89

89:                                               ; preds = %186, %79
  store i64 0, i64* %16, align 8
  br label %90

90:                                               ; preds = %253, %89
  %91 = load %struct.super_block*, %struct.super_block** %6, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %94 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %91, i64 %92, %struct.quad_buffer_head* %93)
  store %struct.dnode* %94, %struct.dnode** %14, align 8
  %95 = icmp ne %struct.dnode* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @kfree(i8* %97)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

99:                                               ; preds = %90
  %100 = load %struct.dnode*, %struct.dnode** %14, align 8
  %101 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %100)
  store %struct.hpfs_dirent* %101, %struct.hpfs_dirent** %20, align 8
  %102 = load %struct.dnode*, %struct.dnode** %14, align 8
  %103 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %102)
  store %struct.hpfs_dirent* %103, %struct.hpfs_dirent** %19, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %123, %106
  %108 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %109 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %110 = icmp ult %struct.hpfs_dirent* %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %113 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %118 = call i64 @de_down_pointer(%struct.hpfs_dirent* %117)
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %188

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %125 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %124)
  store %struct.hpfs_dirent* %125, %struct.hpfs_dirent** %19, align 8
  br label %107

126:                                              ; preds = %107
  %127 = load %struct.super_block*, %struct.super_block** %6, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %129)
  %131 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %132 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %131)
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @kfree(i8* %133)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

135:                                              ; preds = %99
  br label %136

136:                                              ; preds = %225, %135
  %137 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %138 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @kfree(i8* %143)
  %145 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  store %struct.hpfs_dirent* %145, %struct.hpfs_dirent** %5, align 8
  br label %262

146:                                              ; preds = %136
  %147 = load %struct.super_block*, %struct.super_block** %6, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %151 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %154 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %157 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @hpfs_compare_names(%struct.super_block* %147, i8* %148, i32 %149, i32 %152, i32 %155, i32 %158)
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %187

162:                                              ; preds = %146
  %163 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %164 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %169 = call i64 @de_down_pointer(%struct.hpfs_dirent* %168)
  store i64 %169, i64* %15, align 8
  %170 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %171 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %170)
  %172 = load %struct.super_block*, %struct.super_block** %6, align 8
  %173 = call %struct.TYPE_6__* @hpfs_sb(%struct.super_block* %172)
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load %struct.super_block*, %struct.super_block** %6, align 8
  %179 = load i64, i64* %15, align 8
  %180 = call i64 @hpfs_stop_cycles(%struct.super_block* %178, i64 %179, i32* %22, i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i8*, i8** %11, align 8
  %184 = call i32 @kfree(i8* %183)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %167
  br label %89

187:                                              ; preds = %162, %146
  br label %188

188:                                              ; preds = %187, %121
  %189 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %190 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @kfree(i8* %195)
  %197 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  store %struct.hpfs_dirent* %197, %struct.hpfs_dirent** %5, align 8
  br label %262

198:                                              ; preds = %188
  %199 = load %struct.super_block*, %struct.super_block** %6, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %203 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %206 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %209 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @hpfs_compare_names(%struct.super_block* %199, i8* %200, i32 %201, i32 %204, i32 %207, i32 %210)
  store i32 %211, i32* %21, align 4
  %212 = load i32, i32* %21, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %198
  %215 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %216 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  br label %254

220:                                              ; preds = %214, %198
  %221 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %222 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %221)
  store %struct.hpfs_dirent* %222, %struct.hpfs_dirent** %19, align 8
  %223 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %20, align 8
  %224 = icmp ult %struct.hpfs_dirent* %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %136

226:                                              ; preds = %220
  %227 = load %struct.dnode*, %struct.dnode** %14, align 8
  %228 = getelementptr inbounds %struct.dnode, %struct.dnode* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %254

232:                                              ; preds = %226
  %233 = load i64, i64* %15, align 8
  store i64 %233, i64* %16, align 8
  %234 = load %struct.dnode*, %struct.dnode** %14, align 8
  %235 = getelementptr inbounds %struct.dnode, %struct.dnode* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %15, align 8
  %237 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %238 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %237)
  %239 = load %struct.super_block*, %struct.super_block** %6, align 8
  %240 = call %struct.TYPE_6__* @hpfs_sb(%struct.super_block* %239)
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %232
  %245 = load %struct.super_block*, %struct.super_block** %6, align 8
  %246 = load i64, i64* %16, align 8
  %247 = call i64 @hpfs_stop_cycles(%struct.super_block* %245, i64 %246, i32* %24, i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i8*, i8** %11, align 8
  %251 = call i32 @kfree(i8* %250)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %232
  br label %90

254:                                              ; preds = %231, %219
  %255 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %9, align 8
  %256 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %255)
  %257 = load %struct.super_block*, %struct.super_block** %6, align 8
  %258 = load i64, i64* %7, align 8
  %259 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %258)
  %260 = load i8*, i8** %11, align 8
  %261 = call i32 @kfree(i8* %260)
  store %struct.hpfs_dirent* null, %struct.hpfs_dirent** %5, align 8
  br label %262

262:                                              ; preds = %254, %249, %194, %182, %142, %126, %96, %68, %60, %32
  %263 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  ret %struct.hpfs_dirent* %263
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i64, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_compare_names(%struct.super_block*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i64, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
