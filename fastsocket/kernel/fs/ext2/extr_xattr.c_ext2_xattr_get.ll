; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr.c_ext2_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.buffer_head = type { i8*, i32, i32 }
%struct.ext2_xattr_entry = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"name=%d.%s, buffer=%p, buffer_size=%ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@EXT2_XATTR_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ext2_xattr_get\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cache insert failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_xattr_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext2_xattr_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ext2_xattr_entry*, align 8
  %19 = alloca %struct.ext2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i8* %23, i64 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %257

31:                                               ; preds = %5
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @down_read(i32* %34)
  %36 = load i32, i32* @ENODATA, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %249

44:                                               ; preds = %31
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.buffer_head* @sb_bread(%struct.TYPE_5__* %53, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %12, align 8
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = icmp ne %struct.buffer_head* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %44
  br label %249

64:                                               ; preds = %44
  %65 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 2
  %68 = call i32 @atomic_read(i32* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %70 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @le32_to_cpu(i32 %72)
  %74 = call i32 @ea_bdebug(%struct.buffer_head* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8* %82, i8** %16, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %84 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @EXT2_XATTR_MAGIC, align 4
  %88 = call i64 @cpu_to_le32(i32 %87)
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %64
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = call %struct.TYPE_6__* @HDR(%struct.buffer_head* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @cpu_to_le32(i32 1)
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %90, %64
  br label %98

98:                                               ; preds = %216, %190, %172, %135, %97
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ext2_error(%struct.TYPE_5__* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %17, align 4
  br label %249

112:                                              ; preds = %90
  %113 = load i8*, i8** %9, align 8
  %114 = call i64 @strlen(i8* %113)
  store i64 %114, i64* %14, align 8
  %115 = load i32, i32* @ERANGE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %17, align 4
  %117 = load i64, i64* %14, align 8
  %118 = icmp ugt i64 %117, 255
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %249

120:                                              ; preds = %112
  %121 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %122 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %121)
  store %struct.ext2_xattr_entry* %122, %struct.ext2_xattr_entry** %13, align 8
  br label %123

123:                                              ; preds = %157, %120
  %124 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %125 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br i1 %127, label %128, label %159

128:                                              ; preds = %123
  %129 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %130 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %129)
  store %struct.ext2_xattr_entry* %130, %struct.ext2_xattr_entry** %18, align 8
  %131 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %18, align 8
  %132 = bitcast %struct.ext2_xattr_entry* %131 to i8*
  %133 = load i8*, i8** %16, align 8
  %134 = icmp uge i8* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %98

136:                                              ; preds = %128
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %139 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i64, i64* %14, align 8
  %144 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %145 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load i8*, i8** %9, align 8
  %150 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %151 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = call i64 @memcmp(i8* %149, i32 %152, i64 %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %185

157:                                              ; preds = %148, %142, %136
  %158 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %18, align 8
  store %struct.ext2_xattr_entry* %158, %struct.ext2_xattr_entry** %13, align 8
  br label %123

159:                                              ; preds = %123
  br label %160

160:                                              ; preds = %173, %159
  %161 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %162 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %167 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %166)
  store %struct.ext2_xattr_entry* %167, %struct.ext2_xattr_entry** %19, align 8
  %168 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %19, align 8
  %169 = bitcast %struct.ext2_xattr_entry* %168 to i8*
  %170 = load i8*, i8** %16, align 8
  %171 = icmp uge i8* %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %98

173:                                              ; preds = %165
  %174 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %19, align 8
  store %struct.ext2_xattr_entry* %174, %struct.ext2_xattr_entry** %13, align 8
  br label %160

175:                                              ; preds = %160
  %176 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %177 = call i64 @ext2_xattr_cache_insert(%struct.buffer_head* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.inode*, %struct.inode** %7, align 8
  %181 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* @ENODATA, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %17, align 4
  br label %249

185:                                              ; preds = %156
  %186 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %187 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %98

191:                                              ; preds = %185
  %192 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %193 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le32_to_cpu(i32 %194)
  store i64 %195, i64* %15, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load %struct.inode*, %struct.inode** %7, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ugt i64 %196, %201
  br i1 %202, label %216, label %203

203:                                              ; preds = %191
  %204 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %205 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @le16_to_cpu(i32 %206)
  %208 = load i64, i64* %15, align 8
  %209 = add i64 %207, %208
  %210 = load %struct.inode*, %struct.inode** %7, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %209, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %203, %191
  br label %98

217:                                              ; preds = %203
  %218 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %219 = call i64 @ext2_xattr_cache_insert(%struct.buffer_head* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load %struct.inode*, %struct.inode** %7, align 8
  %223 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %217
  %225 = load i8*, i8** %10, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %246

227:                                              ; preds = %224
  %228 = load i32, i32* @ERANGE, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %17, align 4
  %230 = load i64, i64* %15, align 8
  %231 = load i64, i64* %11, align 8
  %232 = icmp ugt i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %249

234:                                              ; preds = %227
  %235 = load i8*, i8** %10, align 8
  %236 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %237 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %240 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @le16_to_cpu(i32 %241)
  %243 = getelementptr inbounds i8, i8* %238, i64 %242
  %244 = load i64, i64* %15, align 8
  %245 = call i32 @memcpy(i8* %235, i8* %243, i64 %244)
  br label %246

246:                                              ; preds = %234, %224
  %247 = load i64, i64* %15, align 8
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %17, align 4
  br label %249

249:                                              ; preds = %246, %233, %182, %119, %98, %63, %43
  %250 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %251 = call i32 @brelse(%struct.buffer_head* %250)
  %252 = load %struct.inode*, %struct.inode** %7, align 8
  %253 = call %struct.TYPE_7__* @EXT2_I(%struct.inode* %252)
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = call i32 @up_read(i32* %254)
  %256 = load i32, i32* %17, align 4
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %249, %28
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_7__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @HDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_error(%struct.TYPE_5__*, i8*, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry*) #1

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i64 @ext2_xattr_cache_insert(%struct.buffer_head*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
