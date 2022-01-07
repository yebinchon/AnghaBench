; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txCommit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_txCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.commit = type { i32, %struct.inode**, %struct.lrd, %struct.jfs_log*, i32, %struct.super_block* }
%struct.lrd = type { i64, i32, i64, i32 }
%struct.jfs_log = type { i32 }
%struct.tblock = type { i32, i32, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.jfs_inode_info = type { i64, i64, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.jfs_log* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"txCommit, tid = %d, flag = %d\00", align 1
@EROFS = common dso_local global i32 0, align 4
@COMMIT_FORCE = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_LAZY = common dso_local global i32 0, align 4
@COMMIT_Dirty = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@LOG_COMMIT = common dso_local global i32 0, align 4
@tblkGC_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"txCommit: tid = %d, returning %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @txCommit(i32 %0, i32 %1, %struct.inode** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit, align 8
  %11 = alloca %struct.jfs_log*, align 8
  %12 = alloca %struct.tblock*, align 8
  %13 = alloca %struct.lrd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.jfs_inode_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.super_block*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.inode** %2, %struct.inode*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.inode**, %struct.inode*** %7, align 8
  %25 = getelementptr inbounds %struct.inode*, %struct.inode** %24, i64 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  %27 = call i64 @isReadOnly(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %343

32:                                               ; preds = %4
  %33 = load %struct.inode**, %struct.inode*** %7, align 8
  %34 = getelementptr inbounds %struct.inode*, %struct.inode** %33, i64 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 5
  store %struct.super_block* %37, %struct.super_block** %38, align 8
  store %struct.super_block* %37, %struct.super_block** %20, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.super_block*, %struct.super_block** %20, align 8
  %45 = call i32 @txBegin(%struct.super_block* %44, i32 0)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.tblock* @tid_to_tblock(i32 %47)
  store %struct.tblock* %48, %struct.tblock** %12, align 8
  %49 = load %struct.super_block*, %struct.super_block** %20, align 8
  %50 = call %struct.TYPE_8__* @JFS_SBI(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.jfs_log*, %struct.jfs_log** %51, align 8
  store %struct.jfs_log* %52, %struct.jfs_log** %11, align 8
  %53 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 3
  store %struct.jfs_log* %53, %struct.jfs_log** %54, align 8
  %55 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 2
  store %struct.lrd* %55, %struct.lrd** %13, align 8
  %56 = load %struct.tblock*, %struct.tblock** %12, align 8
  %57 = getelementptr inbounds %struct.tblock, %struct.tblock* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.lrd*, %struct.lrd** %13, align 8
  %61 = getelementptr inbounds %struct.lrd, %struct.lrd* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.lrd*, %struct.lrd** %13, align 8
  %63 = getelementptr inbounds %struct.lrd, %struct.lrd* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.tblock*, %struct.tblock** %12, align 8
  %66 = getelementptr inbounds %struct.tblock, %struct.tblock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @COMMIT_FORCE, align 4
  %71 = load i32, i32* @COMMIT_SYNC, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %46
  %76 = load i32, i32* @COMMIT_LAZY, align 4
  %77 = load %struct.tblock*, %struct.tblock** %12, align 8
  %78 = getelementptr inbounds %struct.tblock, %struct.tblock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %46
  %82 = load %struct.inode**, %struct.inode*** %7, align 8
  %83 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  store %struct.inode** %82, %struct.inode*** %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %201, %81
  %87 = load i32, i32* %17, align 4
  %88 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %204

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %93 = load %struct.inode**, %struct.inode*** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.inode*, %struct.inode** %93, i64 %95
  %97 = load %struct.inode*, %struct.inode** %96, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %141, %91
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %109 = load %struct.inode**, %struct.inode*** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.inode*, %struct.inode** %109, i64 %111
  %113 = load %struct.inode*, %struct.inode** %112, align 8
  store %struct.inode* %113, %struct.inode** %15, align 8
  %114 = load %struct.inode*, %struct.inode** %15, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %19, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %107
  %120 = load %struct.inode*, %struct.inode** %15, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %19, align 8
  %123 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %124 = load %struct.inode**, %struct.inode*** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.inode*, %struct.inode** %124, i64 %126
  %128 = load %struct.inode*, %struct.inode** %127, align 8
  %129 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %130 = load %struct.inode**, %struct.inode*** %129, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.inode*, %struct.inode** %130, i64 %132
  store %struct.inode* %128, %struct.inode** %133, align 8
  %134 = load %struct.inode*, %struct.inode** %15, align 8
  %135 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %136 = load %struct.inode**, %struct.inode*** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.inode*, %struct.inode** %136, i64 %138
  store %struct.inode* %134, %struct.inode** %139, align 8
  br label %140

140:                                              ; preds = %119, %107
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %102

144:                                              ; preds = %102
  %145 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %146 = load %struct.inode**, %struct.inode*** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.inode*, %struct.inode** %146, i64 %148
  %150 = load %struct.inode*, %struct.inode** %149, align 8
  store %struct.inode* %150, %struct.inode** %15, align 8
  %151 = load %struct.inode*, %struct.inode** %15, align 8
  %152 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %151)
  store %struct.jfs_inode_info* %152, %struct.jfs_inode_info** %16, align 8
  %153 = load i32, i32* @COMMIT_Dirty, align 4
  %154 = load %struct.inode*, %struct.inode** %15, align 8
  %155 = call i32 @clear_cflag(i32 %153, %struct.inode* %154)
  %156 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %157 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %144
  %161 = load %struct.tblock*, %struct.tblock** %12, align 8
  %162 = getelementptr inbounds %struct.tblock, %struct.tblock* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %165 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.TYPE_7__* @lid_to_tlock(i64 %166)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i64 %163, i64* %168, align 8
  %169 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %170 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.tblock*, %struct.tblock** %12, align 8
  %173 = getelementptr inbounds %struct.tblock, %struct.tblock* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load %struct.tblock*, %struct.tblock** %12, align 8
  %175 = getelementptr inbounds %struct.tblock, %struct.tblock* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %160
  %179 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %180 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.tblock*, %struct.tblock** %12, align 8
  %183 = getelementptr inbounds %struct.tblock, %struct.tblock* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %160
  %185 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %186 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  %187 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %188 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  %189 = call i32 (...) @TXN_LOCK()
  %190 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %191 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %190, i32 0, i32 2
  %192 = call i32 @list_del_init(i32* %191)
  %193 = call i32 (...) @TXN_UNLOCK()
  br label %194

194:                                              ; preds = %184, %144
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.inode*, %struct.inode** %15, align 8
  %197 = call i32 @diWrite(i32 %195, %struct.inode* %196)
  store i32 %197, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %336

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %86

204:                                              ; preds = %86
  %205 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %206 = load %struct.tblock*, %struct.tblock** %12, align 8
  %207 = call i32 @txLog(%struct.jfs_log* %205, %struct.tblock* %206, %struct.commit* %10)
  store i32 %207, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %343

210:                                              ; preds = %204
  %211 = load %struct.tblock*, %struct.tblock** %12, align 8
  %212 = getelementptr inbounds %struct.tblock, %struct.tblock* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @COMMIT_DELETE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %241

217:                                              ; preds = %210
  %218 = load %struct.tblock*, %struct.tblock** %12, align 8
  %219 = getelementptr inbounds %struct.tblock, %struct.tblock* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = call i32 @atomic_inc(i32* %222)
  %224 = load %struct.tblock*, %struct.tblock** %12, align 8
  %225 = getelementptr inbounds %struct.tblock, %struct.tblock* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @I_SYNC, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %217
  %234 = load i32, i32* @COMMIT_LAZY, align 4
  %235 = xor i32 %234, -1
  %236 = load %struct.tblock*, %struct.tblock** %12, align 8
  %237 = getelementptr inbounds %struct.tblock, %struct.tblock* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %233, %217
  br label %241

241:                                              ; preds = %240, %210
  %242 = load %struct.tblock*, %struct.tblock** %12, align 8
  %243 = getelementptr inbounds %struct.tblock, %struct.tblock* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @COMMIT_DELETE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %241
  %249 = load %struct.tblock*, %struct.tblock** %12, align 8
  %250 = getelementptr inbounds %struct.tblock, %struct.tblock* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %248
  %257 = load i32, i32* @COMMIT_Nolink, align 4
  %258 = load %struct.tblock*, %struct.tblock** %12, align 8
  %259 = getelementptr inbounds %struct.tblock, %struct.tblock* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = call i32 @test_cflag(i32 %257, %struct.TYPE_6__* %261)
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  br label %265

265:                                              ; preds = %256, %248
  %266 = phi i1 [ false, %248 ], [ %264, %256 ]
  br label %267

267:                                              ; preds = %265, %241
  %268 = phi i1 [ true, %241 ], [ %266, %265 ]
  %269 = zext i1 %268 to i32
  %270 = call i32 @ASSERT(i32 %269)
  %271 = load i32, i32* @LOG_COMMIT, align 4
  %272 = call i32 @cpu_to_le16(i32 %271)
  %273 = load %struct.lrd*, %struct.lrd** %13, align 8
  %274 = getelementptr inbounds %struct.lrd, %struct.lrd* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = load %struct.lrd*, %struct.lrd** %13, align 8
  %276 = getelementptr inbounds %struct.lrd, %struct.lrd* %275, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %278 = load %struct.tblock*, %struct.tblock** %12, align 8
  %279 = load %struct.lrd*, %struct.lrd** %13, align 8
  %280 = call i32 @lmLog(%struct.jfs_log* %277, %struct.tblock* %278, %struct.lrd* %279, i32* null)
  store i32 %280, i32* %14, align 4
  %281 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %282 = load %struct.tblock*, %struct.tblock** %12, align 8
  %283 = call i32 @lmGroupCommit(%struct.jfs_log* %281, %struct.tblock* %282)
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @COMMIT_FORCE, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %267
  %289 = load %struct.tblock*, %struct.tblock** %12, align 8
  %290 = call i32 @txForce(%struct.tblock* %289)
  br label %291

291:                                              ; preds = %288, %267
  %292 = load %struct.tblock*, %struct.tblock** %12, align 8
  %293 = getelementptr inbounds %struct.tblock, %struct.tblock* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @COMMIT_FORCE, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %291
  %299 = load %struct.tblock*, %struct.tblock** %12, align 8
  %300 = call i32 @txUpdateMap(%struct.tblock* %299)
  br label %301

301:                                              ; preds = %298, %291
  %302 = load %struct.tblock*, %struct.tblock** %12, align 8
  %303 = call i32 @txRelease(%struct.tblock* %302)
  %304 = load %struct.tblock*, %struct.tblock** %12, align 8
  %305 = getelementptr inbounds %struct.tblock, %struct.tblock* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @tblkGC_LAZY, align 4
  %308 = and i32 %306, %307
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %301
  %311 = load %struct.tblock*, %struct.tblock** %12, align 8
  %312 = call i32 @txUnlock(%struct.tblock* %311)
  br label %313

313:                                              ; preds = %310, %301
  store i32 0, i32* %17, align 4
  br label %314

314:                                              ; preds = %332, %313
  %315 = load i32, i32* %17, align 4
  %316 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp slt i32 %315, %317
  br i1 %318, label %319, label %335

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %321 = load %struct.inode**, %struct.inode*** %320, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.inode*, %struct.inode** %321, i64 %323
  %325 = load %struct.inode*, %struct.inode** %324, align 8
  store %struct.inode* %325, %struct.inode** %15, align 8
  %326 = load %struct.inode*, %struct.inode** %15, align 8
  %327 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %326)
  store %struct.jfs_inode_info* %327, %struct.jfs_inode_info** %16, align 8
  %328 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %329 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  %330 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %16, align 8
  %331 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %330, i32 0, i32 0
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %319
  %333 = load i32, i32* %17, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %17, align 4
  br label %314

335:                                              ; preds = %314
  br label %336

336:                                              ; preds = %335, %199
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i32, i32* %5, align 4
  %341 = call i32 @txAbort(i32 %340, i32 1)
  br label %342

342:                                              ; preds = %339, %336
  br label %343

343:                                              ; preds = %342, %209, %29
  %344 = load i32, i32* %5, align 4
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %344, i32 %345)
  %347 = load i32, i32* %9, align 4
  ret i32 %347
}

declare dso_local i32 @jfs_info(i8*, i32, i32) #1

declare dso_local i64 @isReadOnly(%struct.inode*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local %struct.TYPE_8__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local %struct.TYPE_7__* @lid_to_tlock(i64) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @diWrite(i32, %struct.inode*) #1

declare dso_local i32 @txLog(%struct.jfs_log*, %struct.tblock*, %struct.commit*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_cflag(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @lmLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, i32*) #1

declare dso_local i32 @lmGroupCommit(%struct.jfs_log*, %struct.tblock*) #1

declare dso_local i32 @txForce(%struct.tblock*) #1

declare dso_local i32 @txUpdateMap(%struct.tblock*) #1

declare dso_local i32 @txRelease(%struct.tblock*) #1

declare dso_local i32 @txUnlock(%struct.tblock*) #1

declare dso_local i32 @txAbort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
