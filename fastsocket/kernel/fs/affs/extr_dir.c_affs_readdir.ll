; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_dir.c_affs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_dir.c_affs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.inode = type { i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"AFFS: readdir(ino=%lu,f_pos=%lx)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"More than 65535 entries in chain\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"AFFS: readdir() left off=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Cannot read block %d\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"AFFS: readdir(): filldir(\22%.*s\22, ino=%u), hash=%d, f_pos=%x\0A\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"AFFS: readdir()=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i8*, i32, i32, i32, i32)*)* @affs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_readdir(%struct.file* %0, i8* %1, i64 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %2, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %36)
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %20, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %3
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 2
  store i8* null, i8** %47, align 8
  %48 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DT_DIR, align 4
  %55 = call i64 %48(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %50, i32 %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %296

58:                                               ; preds = %45
  store i32 1, i32* %17, align 4
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %58, %3
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = call i32 @parent_ino(%struct.TYPE_7__* %73)
  %75 = load i32, i32* @DT_DIR, align 4
  %76 = call i64 %67(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %69, i32 %74, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %4, align 4
  br label %296

80:                                               ; preds = %66
  store i32 2, i32* %17, align 4
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  store i32 2, i32* %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %80, %63
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i32 @affs_lock_dir(%struct.inode* %86)
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %88, 2
  %90 = and i32 %89, 65535
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sub nsw i32 %91, 2
  %93 = ashr i32 %92, 16
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 65535
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.super_block*, %struct.super_block** %9, align 8
  %98 = call i32 @affs_warning(%struct.super_block* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %16, align 4
  %104 = or i32 %102, %103
  %105 = add nsw i32 %104, 2
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %96, %85
  %109 = load %struct.super_block*, %struct.super_block** %9, align 8
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.buffer_head* @affs_bread(%struct.super_block* %109, i32 %112)
  store %struct.buffer_head* %113, %struct.buffer_head** %10, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %115 = icmp ne %struct.buffer_head* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %286

117:                                              ; preds = %108
  %118 = load %struct.file*, %struct.file** %5, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load %struct.file*, %struct.file** %5, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %18, align 4
  %135 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %208

136:                                              ; preds = %125, %117
  %137 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %138 = call %struct.TYPE_10__* @AFFS_HEAD(%struct.buffer_head* %137)
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be32_to_cpu(i32 %144)
  store i32 %145, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %174, %136
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %150, %151
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i1 [ false, %146 ], [ %152, %149 ]
  br i1 %154, label %155, label %177

155:                                              ; preds = %153
  %156 = load %struct.super_block*, %struct.super_block** %9, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call %struct.buffer_head* @affs_bread(%struct.super_block* %156, i32 %157)
  store %struct.buffer_head* %158, %struct.buffer_head** %11, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %160 = icmp ne %struct.buffer_head* %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load %struct.super_block*, %struct.super_block** %9, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @affs_error(%struct.super_block* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %286

165:                                              ; preds = %155
  %166 = load %struct.super_block*, %struct.super_block** %9, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = call %struct.TYPE_8__* @AFFS_TAIL(%struct.super_block* %166, %struct.buffer_head* %167)
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @be32_to_cpu(i32 %170)
  store i32 %171, i32* %18, align 4
  %172 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %173 = call i32 @affs_brelse(%struct.buffer_head* %172)
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %146

177:                                              ; preds = %153
  %178 = load i32, i32* %18, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %208

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %267, %181
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.super_block*, %struct.super_block** %9, align 8
  %187 = call %struct.TYPE_9__* @AFFS_SB(%struct.super_block* %186)
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %185, %189
  br i1 %190, label %191, label %270

191:                                              ; preds = %184
  %192 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %193 = call %struct.TYPE_10__* @AFFS_HEAD(%struct.buffer_head* %192)
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @be32_to_cpu(i32 %199)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  br label %267

204:                                              ; preds = %191
  %205 = load i32, i32* %15, align 4
  %206 = shl i32 %205, 16
  %207 = add nsw i32 %206, 2
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %204, %180, %133
  br label %209

209:                                              ; preds = %263, %208
  %210 = load %struct.super_block*, %struct.super_block** %9, align 8
  %211 = load i32, i32* %18, align 4
  %212 = call %struct.buffer_head* @affs_bread(%struct.super_block* %210, i32 %211)
  store %struct.buffer_head* %212, %struct.buffer_head** %11, align 8
  %213 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %214 = icmp ne %struct.buffer_head* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %209
  %216 = load %struct.super_block*, %struct.super_block** %9, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @affs_error(%struct.super_block* %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  br label %271

219:                                              ; preds = %209
  %220 = load %struct.super_block*, %struct.super_block** %9, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %222 = call %struct.TYPE_8__* @AFFS_TAIL(%struct.super_block* %220, %struct.buffer_head* %221)
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = call i32 @min(i8 zeroext %226, i32 30)
  store i32 %227, i32* %13, align 4
  %228 = load %struct.super_block*, %struct.super_block** %9, align 8
  %229 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %230 = call %struct.TYPE_8__* @AFFS_TAIL(%struct.super_block* %228, %struct.buffer_head* %229)
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8* %233, i8** %12, align 8
  %234 = load i32, i32* %13, align 4
  %235 = load i8*, i8** %12, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %17, align 4
  %239 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %234, i8* %235, i32 %236, i32 %237, i32 %238)
  %240 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* @DT_UNKNOWN, align 4
  %247 = call i64 %240(i8* %241, i8* %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %219
  br label %271

250:                                              ; preds = %219
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %17, align 4
  %255 = load %struct.super_block*, %struct.super_block** %9, align 8
  %256 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %257 = call %struct.TYPE_8__* @AFFS_TAIL(%struct.super_block* %255, %struct.buffer_head* %256)
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @be32_to_cpu(i32 %259)
  store i32 %260, i32* %18, align 4
  %261 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %262 = call i32 @affs_brelse(%struct.buffer_head* %261)
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  br label %263

263:                                              ; preds = %250
  %264 = load i32, i32* %18, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %209, label %266

266:                                              ; preds = %263
  br label %267

267:                                              ; preds = %266, %203
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %184

270:                                              ; preds = %184
  br label %271

271:                                              ; preds = %270, %249, %215
  %272 = load i32, i32* %17, align 4
  %273 = load %struct.file*, %struct.file** %5, align 8
  %274 = getelementptr inbounds %struct.file, %struct.file* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load %struct.inode*, %struct.inode** %8, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.file*, %struct.file** %5, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 1
  store i64 %277, i64* %279, align 8
  %280 = load i32, i32* %18, align 4
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = load %struct.file*, %struct.file** %5, align 8
  %284 = getelementptr inbounds %struct.file, %struct.file* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  %285 = load i32, i32* %19, align 4
  store i32 %285, i32* %20, align 4
  br label %286

286:                                              ; preds = %271, %161, %116
  %287 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %288 = call i32 @affs_brelse(%struct.buffer_head* %287)
  %289 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %290 = call i32 @affs_brelse(%struct.buffer_head* %289)
  %291 = load %struct.inode*, %struct.inode** %8, align 8
  %292 = call i32 @affs_unlock_dir(%struct.inode* %291)
  %293 = load i32, i32* %19, align 4
  %294 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* %20, align 4
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %286, %78, %57
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @parent_ino(%struct.TYPE_7__*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_10__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i32 @affs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_9__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @min(i8 zeroext, i32) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
