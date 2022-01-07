; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_get_extblock_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_file.c_affs_get_extblock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, %struct.buffer_head*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@AFFS_AC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32)* @affs_get_extblock_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_get_extblock_slow(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %7, align 8
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %31, %struct.buffer_head* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %267

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.buffer_head* @affs_alloc_extblock(%struct.inode* %54, %struct.buffer_head* %55, i32 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %7, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = call i64 @IS_ERR(%struct.buffer_head* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %62, %struct.buffer_head** %3, align 8
  br label %298

63:                                               ; preds = %53
  br label %275

64:                                               ; preds = %2
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  br label %267

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %72, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 (...) @BUG()
  br label %87

87:                                               ; preds = %85, %78
  %88 = load %struct.inode*, %struct.inode** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call %struct.buffer_head* @affs_get_extblock(%struct.inode* %88, i32 %90)
  store %struct.buffer_head* %91, %struct.buffer_head** %14, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %93 = call i64 @IS_ERR(%struct.buffer_head* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %96, %struct.buffer_head** %3, align 8
  br label %298

97:                                               ; preds = %87
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call %struct.buffer_head* @affs_alloc_extblock(%struct.inode* %98, %struct.buffer_head* %99, i32 %100)
  store %struct.buffer_head* %101, %struct.buffer_head** %7, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %103 = call i32 @affs_brelse(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %105 = call i64 @IS_ERR(%struct.buffer_head* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %108, %struct.buffer_head** %3, align 8
  br label %298

109:                                              ; preds = %97
  br label %275

110:                                              ; preds = %71
  br label %111

111:                                              ; preds = %139, %110
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %112, %116
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %118, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %124, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %111
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @affs_grow_extcache(%struct.inode* %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %15, align 4
  %138 = call %struct.buffer_head* @ERR_PTR(i32 %137)
  store %struct.buffer_head* %138, %struct.buffer_head** %3, align 8
  br label %298

139:                                              ; preds = %130
  br label %111

140:                                              ; preds = %111
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  br label %267

152:                                              ; preds = %140
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* @AFFS_AC_MASK, align 4
  %158 = and i32 %156, %157
  store i32 %158, i32* %11, align 4
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %152
  %171 = load %struct.inode*, %struct.inode** %4, align 8
  %172 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %171)
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %8, align 4
  br label %267

180:                                              ; preds = %152
  %181 = load i32, i32* %5, align 4
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %215, %180
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %10, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %183
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* @AFFS_AC_MASK, align 4
  %193 = and i32 %191, %192
  store i32 %193, i32* %13, align 4
  %194 = load %struct.inode*, %struct.inode** %4, align 8
  %195 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %194)
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %12, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %189
  %206 = load %struct.inode*, %struct.inode** %4, align 8
  %207 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %206)
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 7
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %8, align 4
  br label %225

215:                                              ; preds = %189
  br label %183

216:                                              ; preds = %183
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %217)
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %216, %205
  br label %226

226:                                              ; preds = %244, %225
  %227 = load %struct.super_block*, %struct.super_block** %6, align 8
  %228 = load i32, i32* %8, align 4
  %229 = call %struct.buffer_head* @affs_bread(%struct.super_block* %227, i32 %228)
  store %struct.buffer_head* %229, %struct.buffer_head** %7, align 8
  %230 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %231 = icmp ne %struct.buffer_head* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %226
  br label %292

233:                                              ; preds = %226
  %234 = load %struct.super_block*, %struct.super_block** %6, align 8
  %235 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %236 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %234, %struct.buffer_head* %235)
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @be32_to_cpu(i32 %238)
  store i32 %239, i32* %8, align 4
  %240 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %241 = call i32 @affs_brelse(%struct.buffer_head* %240)
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %233
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %226, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.inode*, %struct.inode** %4, align 8
  %251 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %250)
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 7
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  store i32 %249, i32* %257, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.inode*, %struct.inode** %4, align 8
  %260 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %259)
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 7
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i32 %258, i32* %266, align 4
  br label %267

267:                                              ; preds = %248, %170, %143, %67, %43
  %268 = load %struct.super_block*, %struct.super_block** %6, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call %struct.buffer_head* @affs_bread(%struct.super_block* %268, i32 %269)
  store %struct.buffer_head* %270, %struct.buffer_head** %7, align 8
  %271 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %272 = icmp ne %struct.buffer_head* %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %267
  br label %292

274:                                              ; preds = %267
  br label %275

275:                                              ; preds = %274, %109, %63
  %276 = load %struct.inode*, %struct.inode** %4, align 8
  %277 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %276)
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 6
  %279 = load %struct.buffer_head*, %struct.buffer_head** %278, align 8
  %280 = call i32 @affs_brelse(%struct.buffer_head* %279)
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.inode*, %struct.inode** %4, align 8
  %283 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %282)
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  store i32 %281, i32* %284, align 8
  %285 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %286 = load %struct.inode*, %struct.inode** %4, align 8
  %287 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %286)
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 6
  store %struct.buffer_head* %285, %struct.buffer_head** %288, align 8
  %289 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %290 = call i32 @get_bh(%struct.buffer_head* %289)
  %291 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %291, %struct.buffer_head** %3, align 8
  br label %298

292:                                              ; preds = %273, %232
  %293 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %294 = call i32 @affs_brelse(%struct.buffer_head* %293)
  %295 = load i32, i32* @EIO, align 4
  %296 = sub nsw i32 0, %295
  %297 = call %struct.buffer_head* @ERR_PTR(i32 %296)
  store %struct.buffer_head* %297, %struct.buffer_head** %3, align 8
  br label %298

298:                                              ; preds = %292, %275, %136, %107, %95, %61
  %299 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %299
}

declare dso_local %struct.TYPE_6__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.buffer_head* @affs_alloc_extblock(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @affs_get_extblock(%struct.inode*, i32) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @affs_grow_extcache(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
