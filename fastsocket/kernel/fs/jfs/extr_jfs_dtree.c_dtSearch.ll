; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtSearch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.component_name = type { i32, i32 }
%struct.btstack = type { i32, %struct.btframe* }
%struct.btframe = type { i32, %struct.metapage*, i8* }
%struct.metapage = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ldtentry = type { i32 }

@JFS_NAME_MAX = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@BT_LEAF = common dso_local global i32 0, align 4
@JFS_LOOKUP = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@JFS_RENAME = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stack overrun in dtSearch!\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtSearch(%struct.inode* %0, %struct.component_name* %1, i64* %2, %struct.btstack* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.component_name*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.btstack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btframe*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.component_name, align 4
  %25 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.component_name* %1, %struct.component_name** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.btstack* %3, %struct.btstack** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 288, i32* %22, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %25, align 8
  %29 = load i32, i32* @JFS_NAME_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i32 @kmalloc(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %302

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.component_name*, %struct.component_name** %7, align 8
  %47 = getelementptr inbounds %struct.component_name, %struct.component_name* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @UniStrcpy(i32 %45, i32 %48)
  %50 = load %struct.component_name*, %struct.component_name** %7, align 8
  %51 = getelementptr inbounds %struct.component_name, %struct.component_name* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.super_block*, %struct.super_block** %25, align 8
  %55 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @JFS_OS2, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @JFS_OS2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = call i32 @ciToUpper(%struct.component_name* %24)
  br label %64

64:                                               ; preds = %62, %43
  %65 = load %struct.btstack*, %struct.btstack** %9, align 8
  %66 = call i32 @BT_CLR(%struct.btstack* %65)
  %67 = load %struct.btstack*, %struct.btstack** %9, align 8
  %68 = getelementptr inbounds %struct.btstack, %struct.btstack* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i8* null, i8** %13, align 8
  br label %69

69:                                               ; preds = %264, %64
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.metapage*, %struct.metapage** %14, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @DT_GETPAGE(%struct.inode* %70, i8* %71, %struct.metapage* %72, i32 %73, %struct.TYPE_9__* %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %298

80:                                               ; preds = %69
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %82 = call i64* @DT_GETSTBL(%struct.TYPE_9__* %81)
  store i64* %82, i64** %16, align 8
  store i32 0, i32* %17, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %203, %80
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %206

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %19, align 4
  %93 = ashr i32 %92, 1
  %94 = add nsw i32 %91, %93
  store i32 %94, i32* %18, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BT_LEAF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %90
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %104 = load i64*, i64** %16, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.super_block*, %struct.super_block** %25, align 8
  %110 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ciCompare(%struct.component_name* %24, %struct.TYPE_9__* %103, i64 %108, i32 %112)
  store i32 %113, i32* %12, align 4
  br label %122

114:                                              ; preds = %90
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %116 = load i64*, i64** %16, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @dtCompare(%struct.component_name* %24, %struct.TYPE_9__* %115, i64 %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %114, %102
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %194

125:                                              ; preds = %122
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BT_LEAF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %193

133:                                              ; preds = %125
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64*, i64** %16, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %136, i64 %141
  %143 = bitcast i32* %142 to %struct.ldtentry*
  %144 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @le32_to_cpu(i32 %145)
  store i64 %146, i64* %23, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @JFS_LOOKUP, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %133
  %151 = load i64, i64* %23, align 8
  %152 = load i64*, i64** %8, align 8
  store i64 %151, i64* %152, align 8
  store i32 0, i32* %11, align 4
  br label %295

153:                                              ; preds = %133
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @JFS_CREATE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i64, i64* %23, align 8
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i32, i32* @EEXIST, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %295

162:                                              ; preds = %153
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @JFS_REMOVE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @JFS_RENAME, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %166, %162
  %171 = load i64*, i64** %8, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %23, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @ESTALE, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %11, align 4
  br label %295

178:                                              ; preds = %170, %166
  %179 = load i64, i64* %23, align 8
  %180 = load i64*, i64** %8, align 8
  store i64 %179, i64* %180, align 8
  %181 = load %struct.btstack*, %struct.btstack** %9, align 8
  %182 = getelementptr inbounds %struct.btstack, %struct.btstack* %181, i32 0, i32 1
  %183 = load %struct.btframe*, %struct.btframe** %182, align 8
  store %struct.btframe* %183, %struct.btframe** %20, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = load %struct.btframe*, %struct.btframe** %20, align 8
  %186 = getelementptr inbounds %struct.btframe, %struct.btframe* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.btframe*, %struct.btframe** %20, align 8
  %189 = getelementptr inbounds %struct.btframe, %struct.btframe* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.metapage*, %struct.metapage** %14, align 8
  %191 = load %struct.btframe*, %struct.btframe** %20, align 8
  %192 = getelementptr inbounds %struct.btframe, %struct.btframe* %191, i32 0, i32 1
  store %struct.metapage* %190, %struct.metapage** %192, align 8
  store i32 0, i32* %11, align 4
  br label %298

193:                                              ; preds = %125
  br label %253

194:                                              ; preds = %122
  %195 = load i32, i32* %12, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %197, %194
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %19, align 4
  %205 = ashr i32 %204, 1
  store i32 %205, i32* %19, align 4
  br label %87

206:                                              ; preds = %87
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @BT_LEAF, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %206
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @JFS_LOOKUP, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @JFS_REMOVE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @JFS_RENAME, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222, %218, %214
  %227 = load i32, i32* @ENOENT, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %11, align 4
  br label %295

229:                                              ; preds = %222
  %230 = load i64*, i64** %8, align 8
  store i64 0, i64* %230, align 8
  %231 = load %struct.btstack*, %struct.btstack** %9, align 8
  %232 = getelementptr inbounds %struct.btstack, %struct.btstack* %231, i32 0, i32 1
  %233 = load %struct.btframe*, %struct.btframe** %232, align 8
  store %struct.btframe* %233, %struct.btframe** %20, align 8
  %234 = load i8*, i8** %13, align 8
  %235 = load %struct.btframe*, %struct.btframe** %20, align 8
  %236 = getelementptr inbounds %struct.btframe, %struct.btframe* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.btframe*, %struct.btframe** %20, align 8
  %239 = getelementptr inbounds %struct.btframe, %struct.btframe* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.metapage*, %struct.metapage** %14, align 8
  %241 = load %struct.btframe*, %struct.btframe** %20, align 8
  %242 = getelementptr inbounds %struct.btframe, %struct.btframe* %241, i32 0, i32 1
  store %struct.metapage* %240, %struct.metapage** %242, align 8
  store i32 0, i32* %11, align 4
  br label %298

243:                                              ; preds = %206
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %17, align 4
  %248 = sub nsw i32 %247, 1
  br label %251

249:                                              ; preds = %243
  %250 = load i32, i32* %17, align 4
  br label %251

251:                                              ; preds = %249, %246
  %252 = phi i32 [ %248, %246 ], [ %250, %249 ]
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %251, %193
  %254 = load %struct.btstack*, %struct.btstack** %9, align 8
  %255 = call i64 @BT_STACK_FULL(%struct.btstack* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = load %struct.super_block*, %struct.super_block** %25, align 8
  %259 = call i32 @jfs_error(%struct.super_block* %258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %260 = load %struct.btstack*, %struct.btstack** %9, align 8
  %261 = call i32 @BT_STACK_DUMP(%struct.btstack* %260)
  %262 = load i32, i32* @EIO, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %11, align 4
  br label %295

264:                                              ; preds = %253
  %265 = load %struct.btstack*, %struct.btstack** %9, align 8
  %266 = getelementptr inbounds %struct.btstack, %struct.btstack* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = load %struct.btstack*, %struct.btstack** %9, align 8
  %270 = load i8*, i8** %13, align 8
  %271 = load i32, i32* %18, align 4
  %272 = call i32 @BT_PUSH(%struct.btstack* %269, i8* %270, i32 %271)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i64*, i64** %16, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds i32, i32* %275, i64 %280
  store i32* %281, i32** %21, align 8
  %282 = load i32*, i32** %21, align 8
  %283 = call i8* @addressPXD(i32* %282)
  store i8* %283, i8** %13, align 8
  %284 = load i32*, i32** %21, align 8
  %285 = call i32 @lengthPXD(i32* %284)
  %286 = load %struct.inode*, %struct.inode** %6, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 0
  %288 = load %struct.super_block*, %struct.super_block** %287, align 8
  %289 = call %struct.TYPE_10__* @JFS_SBI(%struct.super_block* %288)
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %285, %291
  store i32 %292, i32* %22, align 4
  %293 = load %struct.metapage*, %struct.metapage** %14, align 8
  %294 = call i32 @DT_PUTPAGE(%struct.metapage* %293)
  br label %69

295:                                              ; preds = %257, %226, %175, %157, %150
  %296 = load %struct.metapage*, %struct.metapage** %14, align 8
  %297 = call i32 @DT_PUTPAGE(%struct.metapage* %296)
  br label %298

298:                                              ; preds = %295, %229, %178, %79
  %299 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @kfree(i32 %300)
  br label %302

302:                                              ; preds = %298, %40
  %303 = load i32, i32* %11, align 4
  ret i32 %303
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @UniStrcpy(i32, i32) #1

declare dso_local %struct.TYPE_10__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @ciToUpper(%struct.component_name*) #1

declare dso_local i32 @BT_CLR(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i8*, %struct.metapage*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_9__*) #1

declare dso_local i32 @ciCompare(%struct.component_name*, %struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @dtCompare(%struct.component_name*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @BT_STACK_FULL(%struct.btstack*) #1

declare dso_local i32 @jfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @BT_STACK_DUMP(%struct.btstack*) #1

declare dso_local i32 @BT_PUSH(%struct.btstack*, i8*, i32) #1

declare dso_local i8* @addressPXD(i32*) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
