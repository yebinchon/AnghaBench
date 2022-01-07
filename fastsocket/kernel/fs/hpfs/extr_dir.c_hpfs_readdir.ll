; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i64, i32, i32 }
%struct.hpfs_inode_info = type { i64, i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32*, i64, i32, i64, i64 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"dir_fnode\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dir_dnode\00", align 1
@EIOERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"not a directory, fnode %08lx\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"corrupted inode: i_dno == %08x, fnode -> dnode == %08x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"hpfs_readdir\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"HPFS: warning: pos==%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"hpfs_readdir: bad ^A^A entry; pos = %08lx\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"hpfs_readdir: bad \\377 entry; pos = %08lx\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i8*, i32, i64, i64, i32)*)* @hpfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_readdir(%struct.file* %0, i8* %1, i64 (i8*, i8*, i32, i64, i64, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i8*, i32, i64, i64, i32)*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.hpfs_inode_info*, align 8
  %9 = alloca %struct.quad_buffer_head, align 4
  %10 = alloca %struct.hpfs_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.fnode*, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 (i8*, i8*, i32, i64, i64, i32)* %2, i64 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %26)
  store %struct.hpfs_inode_info* %27, %struct.hpfs_inode_info** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = call i32 (...) @lock_kernel()
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_10__* @hpfs_sb(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @hpfs_chk_sectors(i32 %39, i64 %42, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EFSERROR, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  br label %421

48:                                               ; preds = %36
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %53 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @hpfs_chk_sectors(i32 %51, i64 %54, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EFSERROR, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %16, align 4
  br label %421

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_10__* @hpfs_sb(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 2
  br i1 %68, label %69, label %130

69:                                               ; preds = %61
  store i32 0, i32* %19, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.fnode* @hpfs_map_fnode(i32 %72, i64 %75, %struct.buffer_head** %17)
  store %struct.fnode* %76, %struct.fnode** %18, align 8
  %77 = icmp ne %struct.fnode* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @EIOERROR, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %16, align 4
  br label %421

81:                                               ; preds = %69
  %82 = load %struct.fnode*, %struct.fnode** %18, align 8
  %83 = getelementptr inbounds %struct.fnode, %struct.fnode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  store i32 1, i32* %19, align 4
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %86, %81
  %95 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %96 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fnode*, %struct.fnode** %18, align 8
  %99 = getelementptr inbounds %struct.fnode, %struct.fnode* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %97, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %94
  store i32 1, i32* %19, align 4
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %111 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fnode*, %struct.fnode** %18, align 8
  %114 = getelementptr inbounds %struct.fnode, %struct.fnode* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %109, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %112, i64 %119)
  br label %121

121:                                              ; preds = %106, %94
  %122 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EFSERROR, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %16, align 4
  br label %421

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %61
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.TYPE_10__* @hpfs_sb(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %11, align 4
  %137 = load %struct.file*, %struct.file** %4, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 12
  br i1 %140, label %141, label %144

141:                                              ; preds = %130
  %142 = load %struct.file*, %struct.file** %4, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  store i32 13, i32* %143, align 8
  br label %421

144:                                              ; preds = %130
  %145 = load %struct.file*, %struct.file** %4, align 8
  %146 = getelementptr inbounds %struct.file, %struct.file* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 13
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %16, align 4
  br label %421

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %419
  br label %154

154:                                              ; preds = %363, %153
  %155 = load %struct.inode*, %struct.inode** %7, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.TYPE_10__* @hpfs_sb(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %154
  %163 = load %struct.inode*, %struct.inode** %7, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.file*, %struct.file** %4, align 8
  %167 = getelementptr inbounds %struct.file, %struct.file* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @hpfs_stop_cycles(i32 %165, i32 %168, i32* %14, i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i32, i32* @EFSERROR, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %16, align 4
  br label %421

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.file*, %struct.file** %4, align 8
  %177 = getelementptr inbounds %struct.file, %struct.file* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 12
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %421

181:                                              ; preds = %175
  %182 = load %struct.file*, %struct.file** %4, align 8
  %183 = getelementptr inbounds %struct.file, %struct.file* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load %struct.file*, %struct.file** %4, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 4
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.file*, %struct.file** %4, align 8
  %193 = getelementptr inbounds %struct.file, %struct.file* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 5
  br i1 %195, label %196, label %201

196:                                              ; preds = %191, %186, %181
  %197 = load %struct.file*, %struct.file** %4, align 8
  %198 = getelementptr inbounds %struct.file, %struct.file* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  br label %421

201:                                              ; preds = %191
  %202 = load %struct.file*, %struct.file** %4, align 8
  %203 = getelementptr inbounds %struct.file, %struct.file* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load i64 (i8*, i8*, i32, i64, i64, i32)*, i64 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = load %struct.file*, %struct.file** %4, align 8
  %210 = getelementptr inbounds %struct.file, %struct.file* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load %struct.inode*, %struct.inode** %7, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @DT_DIR, align 4
  %217 = call i64 %207(i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1, i64 %212, i64 %215, i32 %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  br label %421

220:                                              ; preds = %206
  %221 = load %struct.file*, %struct.file** %4, align 8
  %222 = getelementptr inbounds %struct.file, %struct.file* %221, i32 0, i32 0
  store i32 11, i32* %222, align 8
  br label %223

223:                                              ; preds = %220, %201
  %224 = load %struct.file*, %struct.file** %4, align 8
  %225 = getelementptr inbounds %struct.file, %struct.file* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 11
  br i1 %227, label %228, label %245

228:                                              ; preds = %223
  %229 = load i64 (i8*, i8*, i32, i64, i64, i32)*, i64 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = load %struct.file*, %struct.file** %4, align 8
  %232 = getelementptr inbounds %struct.file, %struct.file* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %236 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @DT_DIR, align 4
  %239 = call i64 %229(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2, i64 %234, i64 %237, i32 %238)
  %240 = icmp slt i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %228
  br label %421

242:                                              ; preds = %228
  %243 = load %struct.file*, %struct.file** %4, align 8
  %244 = getelementptr inbounds %struct.file, %struct.file* %243, i32 0, i32 0
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %242, %223
  %246 = load %struct.file*, %struct.file** %4, align 8
  %247 = getelementptr inbounds %struct.file, %struct.file* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %272

250:                                              ; preds = %245
  %251 = load %struct.inode*, %struct.inode** %7, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %8, align 8
  %255 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @hpfs_de_as_down_as_possible(i32 %253, i64 %256)
  %258 = trunc i64 %257 to i32
  %259 = shl i32 %258, 4
  %260 = add nsw i32 %259, 1
  %261 = load %struct.file*, %struct.file** %4, align 8
  %262 = getelementptr inbounds %struct.file, %struct.file* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.inode*, %struct.inode** %7, align 8
  %264 = load %struct.file*, %struct.file** %4, align 8
  %265 = getelementptr inbounds %struct.file, %struct.file* %264, i32 0, i32 0
  %266 = call i32 @hpfs_add_pos(%struct.inode* %263, i32* %265)
  %267 = load %struct.inode*, %struct.inode** %7, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.file*, %struct.file** %4, align 8
  %271 = getelementptr inbounds %struct.file, %struct.file* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %250, %245
  %273 = load %struct.file*, %struct.file** %4, align 8
  %274 = getelementptr inbounds %struct.file, %struct.file* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %12, align 8
  %277 = load %struct.inode*, %struct.inode** %7, align 8
  %278 = load %struct.file*, %struct.file** %4, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 0
  %280 = bitcast i32* %279 to i64*
  %281 = call %struct.hpfs_dirent* @map_pos_dirent(%struct.inode* %277, i64* %280, %struct.quad_buffer_head* %9)
  store %struct.hpfs_dirent* %281, %struct.hpfs_dirent** %10, align 8
  %282 = icmp ne %struct.hpfs_dirent* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %272
  %284 = load i32, i32* @EIOERROR, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %16, align 4
  br label %421

286:                                              ; preds = %272
  %287 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %288 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %293 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %365

296:                                              ; preds = %291, %286
  %297 = load %struct.inode*, %struct.inode** %7, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call %struct.TYPE_10__* @hpfs_sb(i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %363

304:                                              ; preds = %296
  %305 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %306 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %339

309:                                              ; preds = %304
  %310 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %311 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %309
  %315 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %316 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 2
  br i1 %318, label %333, label %319

319:                                              ; preds = %314
  %320 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %321 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 1
  br i1 %325, label %333, label %326

326:                                              ; preds = %319
  %327 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %328 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 1
  br i1 %332, label %333, label %339

333:                                              ; preds = %326, %319, %314
  %334 = load %struct.inode*, %struct.inode** %7, align 8
  %335 = getelementptr inbounds %struct.inode, %struct.inode* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load i64, i64* %12, align 8
  %338 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %336, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %337)
  br label %339

339:                                              ; preds = %333, %326, %309, %304
  %340 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %341 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %362

344:                                              ; preds = %339
  %345 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %346 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 1
  br i1 %348, label %356, label %349

349:                                              ; preds = %344
  %350 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %351 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 255
  br i1 %355, label %356, label %362

356:                                              ; preds = %349, %344
  %357 = load %struct.inode*, %struct.inode** %7, align 8
  %358 = getelementptr inbounds %struct.inode, %struct.inode* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load i64, i64* %12, align 8
  %361 = call i32 (i32, i8*, i64, ...) @hpfs_error(i32 %359, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %360)
  br label %362

362:                                              ; preds = %356, %349, %339
  br label %363

363:                                              ; preds = %362, %296
  %364 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %9)
  br label %154

365:                                              ; preds = %291
  %366 = load %struct.inode*, %struct.inode** %7, align 8
  %367 = getelementptr inbounds %struct.inode, %struct.inode* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %370 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %373 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %377 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i8* @hpfs_translate_name(i32 %368, i32* %371, i32 %374, i32 %375, i32 %378)
  store i8* %379, i8** %13, align 8
  %380 = load i64 (i8*, i8*, i32, i64, i64, i32)*, i64 (i8*, i8*, i32, i64, i64, i32)** %6, align 8
  %381 = load i8*, i8** %5, align 8
  %382 = load i8*, i8** %13, align 8
  %383 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %384 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i64, i64* %12, align 8
  %387 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %388 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = load i32, i32* @DT_UNKNOWN, align 4
  %391 = call i64 %380(i8* %381, i8* %382, i32 %385, i64 %386, i64 %389, i32 %390)
  %392 = icmp slt i64 %391, 0
  br i1 %392, label %393, label %409

393:                                              ; preds = %365
  %394 = load i64, i64* %12, align 8
  %395 = trunc i64 %394 to i32
  %396 = load %struct.file*, %struct.file** %4, align 8
  %397 = getelementptr inbounds %struct.file, %struct.file* %396, i32 0, i32 0
  store i32 %395, i32* %397, align 8
  %398 = load i8*, i8** %13, align 8
  %399 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %400 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = bitcast i32* %401 to i8*
  %403 = icmp ne i8* %398, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %393
  %405 = load i8*, i8** %13, align 8
  %406 = call i32 @kfree(i8* %405)
  br label %407

407:                                              ; preds = %404, %393
  %408 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %9)
  br label %421

409:                                              ; preds = %365
  %410 = load i8*, i8** %13, align 8
  %411 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %10, align 8
  %412 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = bitcast i32* %413 to i8*
  %415 = icmp ne i8* %410, %414
  br i1 %415, label %416, label %419

416:                                              ; preds = %409
  %417 = load i8*, i8** %13, align 8
  %418 = call i32 @kfree(i8* %417)
  br label %419

419:                                              ; preds = %416, %409
  %420 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %9)
  br label %153

421:                                              ; preds = %407, %283, %241, %219, %196, %180, %171, %149, %141, %126, %78, %57, %45
  %422 = call i32 (...) @unlock_kernel()
  %423 = load i32, i32* %16, align 4
  ret i32 %423
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.TYPE_10__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_chk_sectors(i32, i64, i32, i8*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i64, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_error(i32, i8*, i64, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(i32, i64) #1

declare dso_local i32 @hpfs_add_pos(%struct.inode*, i32*) #1

declare dso_local %struct.hpfs_dirent* @map_pos_dirent(%struct.inode*, i64*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i8* @hpfs_translate_name(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
