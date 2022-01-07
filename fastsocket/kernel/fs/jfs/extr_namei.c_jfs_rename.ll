; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_namei.c_jfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, i32, i8*, i8* }
%struct.dentry = type { %struct.inode*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }
%struct.tlock = type { i32 }
%struct.dt_lock = type { i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tblock = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.metapage = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"jfs_rename: %s %s\00", align 1
@JFS_LOOKUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@JFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_MUTEX_SECOND_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_VICTIM = common dso_local global i32 0, align 4
@JFS_RENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_rename: new_ip->i_nlink != 0\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"jfs_rename didn't expect dtSearch to fail w/rc = %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"jfs_rename: dtInsert returned -EIO\00", align 1
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"jfs_rename did not expect dtDelete to return rc = %d\00", align 1
@tlckDTREE = common dso_local global i32 0, align 4
@tlckBTROOT = common dso_local global i32 0, align 4
@tlckRELINK = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"jfs_rename: returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @jfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.btstack, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.component_name, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.component_name, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tlock*, align 8
  %19 = alloca %struct.dt_lock*, align 8
  %20 = alloca %struct.lv*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [4 x %struct.inode*], align 16
  %23 = alloca %struct.tblock*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 0, i32* %24, align 4
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  store %struct.inode* %37, %struct.inode** %15, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %13, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i32 @get_UCSname(%struct.component_name* %14, %struct.dentry* %41)
  store i32 %42, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %547

45:                                               ; preds = %4
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = call i32 @get_UCSname(%struct.component_name* %12, %struct.dentry* %46)
  store i32 %47, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %545

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load i32, i32* @JFS_LOOKUP, align 4
  %53 = call i32 @dtSearch(%struct.inode* %51, %struct.component_name* %14, i64* %11, %struct.btstack* %10, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.inode*, %struct.inode** %15, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %543

65:                                               ; preds = %56
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load i32, i32* @JFS_LOOKUP, align 4
  %68 = call i32 @dtSearch(%struct.inode* %66, %struct.component_name* %12, i64* %11, %struct.btstack* %10, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = icmp ne %struct.inode* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.inode*, %struct.inode** %13, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %71
  %81 = load i32, i32* @ESTALE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %16, align 4
  br label %543

83:                                               ; preds = %74
  br label %98

84:                                               ; preds = %65
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %543

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ESTALE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %543

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %83
  %99 = load %struct.inode*, %struct.inode** %15, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @S_ISDIR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %98
  %105 = load %struct.inode*, %struct.inode** %13, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.inode*, %struct.inode** %13, align 8
  %109 = call i32 @dtEmpty(%struct.inode* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @ENOTEMPTY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %16, align 4
  br label %543

114:                                              ; preds = %107
  br label %129

115:                                              ; preds = %104
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = icmp ne %struct.inode* %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @JFS_LINK_MAX, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @EMLINK, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %16, align 4
  br label %543

128:                                              ; preds = %119, %115
  br label %129

129:                                              ; preds = %128, %114
  br label %140

130:                                              ; preds = %98
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = icmp ne %struct.inode* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.inode*, %struct.inode** %13, align 8
  %135 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %136 = call i32 @IWRITE_LOCK(%struct.inode* %134, i32 %135)
  %137 = load %struct.inode*, %struct.inode** %13, align 8
  %138 = call i32 @vfs_dq_init(%struct.inode* %137)
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %129
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @txBegin(i32 %143, i32 0)
  store i32 %144, i32* %17, align 4
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %149 = call i32 @mutex_lock_nested(i32* %147, i32 %148)
  %150 = load %struct.inode*, %struct.inode** %15, align 8
  %151 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %154 = call i32 @mutex_lock_nested(i32* %152, i32 %153)
  %155 = load %struct.inode*, %struct.inode** %6, align 8
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = icmp ne %struct.inode* %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %140
  %159 = load %struct.inode*, %struct.inode** %6, align 8
  %160 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* @COMMIT_MUTEX_SECOND_PARENT, align 4
  %163 = call i32 @mutex_lock_nested(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %140
  %165 = load %struct.inode*, %struct.inode** %13, align 8
  %166 = icmp ne %struct.inode* %165, null
  br i1 %166, label %167, label %294

167:                                              ; preds = %164
  %168 = load %struct.inode*, %struct.inode** %13, align 8
  %169 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %168)
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* @COMMIT_MUTEX_VICTIM, align 4
  %172 = call i32 @mutex_lock_nested(i32* %170, i32 %171)
  %173 = load %struct.inode*, %struct.inode** %13, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %11, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.inode*, %struct.inode** %8, align 8
  %178 = load %struct.inode*, %struct.inode** %15, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @JFS_RENAME, align 4
  %182 = call i32 @dtModify(i32 %176, %struct.inode* %177, %struct.component_name* %12, i64* %11, i64 %180, i32 %181)
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %167
  br label %464

186:                                              ; preds = %167
  %187 = load %struct.inode*, %struct.inode** %13, align 8
  %188 = call i32 @drop_nlink(%struct.inode* %187)
  %189 = load %struct.inode*, %struct.inode** %13, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @S_ISDIR(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %253

194:                                              ; preds = %186
  %195 = load %struct.inode*, %struct.inode** %13, align 8
  %196 = call i32 @drop_nlink(%struct.inode* %195)
  %197 = load %struct.inode*, %struct.inode** %13, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %241

201:                                              ; preds = %194
  %202 = load %struct.inode*, %struct.inode** %13, align 8
  %203 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %202)
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load %struct.inode*, %struct.inode** %6, align 8
  %207 = load %struct.inode*, %struct.inode** %8, align 8
  %208 = icmp ne %struct.inode* %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %201
  %210 = load %struct.inode*, %struct.inode** %6, align 8
  %211 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %210)
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = call i32 @mutex_unlock(i32* %212)
  br label %214

214:                                              ; preds = %209, %201
  %215 = load %struct.inode*, %struct.inode** %15, align 8
  %216 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %215)
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = call i32 @mutex_unlock(i32* %217)
  %219 = load %struct.inode*, %struct.inode** %8, align 8
  %220 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %219)
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.inode*, %struct.inode** %15, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @S_ISDIR(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %214
  %229 = load %struct.inode*, %struct.inode** %13, align 8
  %230 = icmp ne %struct.inode* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.inode*, %struct.inode** %13, align 8
  %233 = call i32 @IWRITE_UNLOCK(%struct.inode* %232)
  br label %234

234:                                              ; preds = %231, %228, %214
  %235 = load %struct.inode*, %struct.inode** %13, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @jfs_error(i32 %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %239 = load i32, i32* @EIO, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %5, align 4
  br label %580

241:                                              ; preds = %194
  %242 = load i32, i32* %17, align 4
  %243 = call %struct.tblock* @tid_to_tblock(i32 %242)
  store %struct.tblock* %243, %struct.tblock** %23, align 8
  %244 = load i32, i32* @COMMIT_DELETE, align 4
  %245 = load %struct.tblock*, %struct.tblock** %23, align 8
  %246 = getelementptr inbounds %struct.tblock, %struct.tblock* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %struct.inode*, %struct.inode** %13, align 8
  %250 = load %struct.tblock*, %struct.tblock** %23, align 8
  %251 = getelementptr inbounds %struct.tblock, %struct.tblock* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  store %struct.inode* %249, %struct.inode** %252, align 8
  br label %293

253:                                              ; preds = %186
  %254 = load %struct.inode*, %struct.inode** %13, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %286

258:                                              ; preds = %253
  %259 = load i32, i32* @COMMIT_Nolink, align 4
  %260 = load %struct.inode*, %struct.inode** %13, align 8
  %261 = call i64 @test_cflag(i32 %259, %struct.inode* %260)
  %262 = icmp ne i64 %261, 0
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i32, i32* %17, align 4
  %267 = load %struct.inode*, %struct.inode** %13, align 8
  %268 = call i32 @commitZeroLink(i32 %266, %struct.inode* %267)
  store i32 %268, i32* %24, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %258
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @txAbort(i32 %271, i32 1)
  %273 = load i32, i32* %24, align 4
  store i32 %273, i32* %16, align 4
  br label %464

274:                                              ; preds = %258
  %275 = load i32, i32* %17, align 4
  %276 = call %struct.tblock* @tid_to_tblock(i32 %275)
  store %struct.tblock* %276, %struct.tblock** %23, align 8
  %277 = load i32, i32* @COMMIT_DELETE, align 4
  %278 = load %struct.tblock*, %struct.tblock** %23, align 8
  %279 = getelementptr inbounds %struct.tblock, %struct.tblock* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.inode*, %struct.inode** %13, align 8
  %283 = load %struct.tblock*, %struct.tblock** %23, align 8
  %284 = getelementptr inbounds %struct.tblock, %struct.tblock* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  store %struct.inode* %282, %struct.inode** %285, align 8
  br label %292

286:                                              ; preds = %253
  %287 = load i8*, i8** @CURRENT_TIME, align 8
  %288 = load %struct.inode*, %struct.inode** %13, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 6
  store i8* %287, i8** %289, align 8
  %290 = load %struct.inode*, %struct.inode** %13, align 8
  %291 = call i32 @mark_inode_dirty(%struct.inode* %290)
  br label %292

292:                                              ; preds = %286, %274
  br label %293

293:                                              ; preds = %292, %241
  br label %330

294:                                              ; preds = %164
  %295 = load %struct.inode*, %struct.inode** %8, align 8
  %296 = load i32, i32* @JFS_CREATE, align 4
  %297 = call i32 @dtSearch(%struct.inode* %295, %struct.component_name* %12, i64* %11, %struct.btstack* %10, i32 %296)
  store i32 %297, i32* %16, align 4
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load i32, i32* %16, align 4
  %302 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %301)
  br label %464

303:                                              ; preds = %294
  %304 = load %struct.inode*, %struct.inode** %15, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %11, align 8
  %307 = load i32, i32* %17, align 4
  %308 = load %struct.inode*, %struct.inode** %8, align 8
  %309 = call i32 @dtInsert(i32 %307, %struct.inode* %308, %struct.component_name* %12, i64* %11, %struct.btstack* %10)
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %303
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* @EIO, align 4
  %315 = sub nsw i32 0, %314
  %316 = icmp eq i32 %313, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %312
  br label %464

320:                                              ; preds = %303
  %321 = load %struct.inode*, %struct.inode** %15, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @S_ISDIR(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load %struct.inode*, %struct.inode** %8, align 8
  %328 = call i32 @inc_nlink(%struct.inode* %327)
  br label %329

329:                                              ; preds = %326, %320
  br label %330

330:                                              ; preds = %329, %293
  %331 = load %struct.inode*, %struct.inode** %15, align 8
  %332 = getelementptr inbounds %struct.inode, %struct.inode* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %11, align 8
  %334 = load i32, i32* %17, align 4
  %335 = load %struct.inode*, %struct.inode** %6, align 8
  %336 = load i32, i32* @JFS_REMOVE, align 4
  %337 = call i32 @dtDelete(i32 %334, %struct.inode* %335, %struct.component_name* %14, i64* %11, i32 %336)
  store i32 %337, i32* %16, align 4
  %338 = load i32, i32* %16, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %330
  %341 = load i32, i32* %16, align 4
  %342 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %341)
  %343 = load i32, i32* %17, align 4
  %344 = call i32 @txAbort(i32 %343, i32 1)
  br label %464

345:                                              ; preds = %330
  %346 = load %struct.inode*, %struct.inode** %15, align 8
  %347 = getelementptr inbounds %struct.inode, %struct.inode* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = call i64 @S_ISDIR(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %401

351:                                              ; preds = %345
  %352 = load %struct.inode*, %struct.inode** %6, align 8
  %353 = call i32 @drop_nlink(%struct.inode* %352)
  %354 = load %struct.inode*, %struct.inode** %6, align 8
  %355 = load %struct.inode*, %struct.inode** %8, align 8
  %356 = icmp ne %struct.inode* %354, %355
  br i1 %356, label %357, label %400

357:                                              ; preds = %351
  %358 = load %struct.inode*, %struct.inode** %8, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = call i32 @cpu_to_le32(i64 %360)
  %362 = load %struct.inode*, %struct.inode** %15, align 8
  %363 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %362)
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 0
  store i32 %361, i32* %366, align 4
  %367 = load i32, i32* %17, align 4
  %368 = load %struct.inode*, %struct.inode** %15, align 8
  %369 = load %struct.inode*, %struct.inode** %15, align 8
  %370 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %369)
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  %372 = bitcast i32* %371 to %struct.metapage*
  %373 = load i32, i32* @tlckDTREE, align 4
  %374 = load i32, i32* @tlckBTROOT, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @tlckRELINK, align 4
  %377 = or i32 %375, %376
  %378 = call %struct.tlock* @txLock(i32 %367, %struct.inode* %368, %struct.metapage* %372, i32 %377)
  store %struct.tlock* %378, %struct.tlock** %18, align 8
  %379 = load %struct.tlock*, %struct.tlock** %18, align 8
  %380 = getelementptr inbounds %struct.tlock, %struct.tlock* %379, i32 0, i32 0
  %381 = bitcast i32* %380 to %struct.dt_lock*
  store %struct.dt_lock* %381, %struct.dt_lock** %19, align 8
  %382 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %383 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  %386 = zext i1 %385 to i32
  %387 = call i32 @ASSERT(i32 %386)
  %388 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %389 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %388, i32 0, i32 1
  %390 = load %struct.lv*, %struct.lv** %389, align 8
  %391 = getelementptr inbounds %struct.lv, %struct.lv* %390, i64 0
  store %struct.lv* %391, %struct.lv** %20, align 8
  %392 = load %struct.lv*, %struct.lv** %20, align 8
  %393 = getelementptr inbounds %struct.lv, %struct.lv* %392, i32 0, i32 1
  store i64 0, i64* %393, align 8
  %394 = load %struct.lv*, %struct.lv** %20, align 8
  %395 = getelementptr inbounds %struct.lv, %struct.lv* %394, i32 0, i32 0
  store i32 1, i32* %395, align 8
  %396 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %397 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, i64* %397, align 8
  br label %400

400:                                              ; preds = %357, %351
  br label %401

401:                                              ; preds = %400, %345
  %402 = load i8*, i8** @CURRENT_TIME, align 8
  %403 = load %struct.inode*, %struct.inode** %15, align 8
  %404 = getelementptr inbounds %struct.inode, %struct.inode* %403, i32 0, i32 6
  store i8* %402, i8** %404, align 8
  %405 = load %struct.inode*, %struct.inode** %15, align 8
  %406 = call i32 @mark_inode_dirty(%struct.inode* %405)
  %407 = load %struct.inode*, %struct.inode** %8, align 8
  %408 = getelementptr inbounds %struct.inode, %struct.inode* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = call i8* @current_fs_time(i32 %409)
  %411 = load %struct.inode*, %struct.inode** %8, align 8
  %412 = getelementptr inbounds %struct.inode, %struct.inode* %411, i32 0, i32 5
  store i8* %410, i8** %412, align 8
  %413 = load %struct.inode*, %struct.inode** %8, align 8
  %414 = getelementptr inbounds %struct.inode, %struct.inode* %413, i32 0, i32 6
  store i8* %410, i8** %414, align 8
  %415 = load %struct.inode*, %struct.inode** %8, align 8
  %416 = call i32 @mark_inode_dirty(%struct.inode* %415)
  store i32 0, i32* %21, align 4
  %417 = load %struct.inode*, %struct.inode** %15, align 8
  %418 = load i32, i32* %21, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %21, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %22, i64 0, i64 %420
  store %struct.inode* %417, %struct.inode** %421, align 8
  %422 = load %struct.inode*, %struct.inode** %13, align 8
  %423 = icmp ne %struct.inode* %422, null
  br i1 %423, label %424, label %430

424:                                              ; preds = %401
  %425 = load %struct.inode*, %struct.inode** %13, align 8
  %426 = load i32, i32* %21, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %21, align 4
  %428 = sext i32 %426 to i64
  %429 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %22, i64 0, i64 %428
  store %struct.inode* %425, %struct.inode** %429, align 8
  br label %430

430:                                              ; preds = %424, %401
  %431 = load %struct.inode*, %struct.inode** %6, align 8
  %432 = load i32, i32* %21, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %21, align 4
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %22, i64 0, i64 %434
  store %struct.inode* %431, %struct.inode** %435, align 8
  %436 = load %struct.inode*, %struct.inode** %6, align 8
  %437 = load %struct.inode*, %struct.inode** %8, align 8
  %438 = icmp ne %struct.inode* %436, %437
  br i1 %438, label %439, label %452

439:                                              ; preds = %430
  %440 = load %struct.inode*, %struct.inode** %8, align 8
  %441 = load i32, i32* %21, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %21, align 4
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %22, i64 0, i64 %443
  store %struct.inode* %440, %struct.inode** %444, align 8
  %445 = load i8*, i8** @CURRENT_TIME, align 8
  %446 = load %struct.inode*, %struct.inode** %6, align 8
  %447 = getelementptr inbounds %struct.inode, %struct.inode* %446, i32 0, i32 5
  store i8* %445, i8** %447, align 8
  %448 = load %struct.inode*, %struct.inode** %6, align 8
  %449 = getelementptr inbounds %struct.inode, %struct.inode* %448, i32 0, i32 6
  store i8* %445, i8** %449, align 8
  %450 = load %struct.inode*, %struct.inode** %6, align 8
  %451 = call i32 @mark_inode_dirty(%struct.inode* %450)
  br label %452

452:                                              ; preds = %439, %430
  %453 = load i32, i32* %24, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %452
  %456 = load i32, i32* @COMMIT_SYNC, align 4
  store i32 %456, i32* %25, align 4
  br label %458

457:                                              ; preds = %452
  store i32 0, i32* %25, align 4
  br label %458

458:                                              ; preds = %457, %455
  %459 = load i32, i32* %17, align 4
  %460 = load i32, i32* %21, align 4
  %461 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %22, i64 0, i64 0
  %462 = load i32, i32* %25, align 4
  %463 = call i32 @txCommit(i32 %459, i32 %460, %struct.inode** %461, i32 %462)
  store i32 %463, i32* %16, align 4
  br label %464

464:                                              ; preds = %458, %340, %319, %300, %270, %185
  %465 = load i32, i32* %17, align 4
  %466 = call i32 @txEnd(i32 %465)
  %467 = load %struct.inode*, %struct.inode** %13, align 8
  %468 = icmp ne %struct.inode* %467, null
  br i1 %468, label %469, label %474

469:                                              ; preds = %464
  %470 = load %struct.inode*, %struct.inode** %13, align 8
  %471 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %470)
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 0
  %473 = call i32 @mutex_unlock(i32* %472)
  br label %474

474:                                              ; preds = %469, %464
  %475 = load %struct.inode*, %struct.inode** %6, align 8
  %476 = load %struct.inode*, %struct.inode** %8, align 8
  %477 = icmp ne %struct.inode* %475, %476
  br i1 %477, label %478, label %483

478:                                              ; preds = %474
  %479 = load %struct.inode*, %struct.inode** %6, align 8
  %480 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %479)
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 0
  %482 = call i32 @mutex_unlock(i32* %481)
  br label %483

483:                                              ; preds = %478, %474
  %484 = load %struct.inode*, %struct.inode** %15, align 8
  %485 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %484)
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 0
  %487 = call i32 @mutex_unlock(i32* %486)
  %488 = load %struct.inode*, %struct.inode** %8, align 8
  %489 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %488)
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 0
  %491 = call i32 @mutex_unlock(i32* %490)
  br label %492

492:                                              ; preds = %523, %483
  %493 = load i32, i32* %24, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %492
  %496 = load i32, i32* %16, align 4
  %497 = icmp eq i32 %496, 0
  br label %498

498:                                              ; preds = %495, %492
  %499 = phi i1 [ false, %492 ], [ %497, %495 ]
  br i1 %499, label %500, label %530

500:                                              ; preds = %498
  %501 = load %struct.inode*, %struct.inode** %13, align 8
  %502 = getelementptr inbounds %struct.inode, %struct.inode* %501, i32 0, i32 4
  %503 = load i32, i32* %502, align 8
  %504 = call i32 @txBegin(i32 %503, i32 0)
  store i32 %504, i32* %17, align 4
  %505 = load %struct.inode*, %struct.inode** %13, align 8
  %506 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %505)
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i32 0, i32 0
  %508 = call i32 @mutex_lock(i32* %507)
  %509 = load i32, i32* %17, align 4
  %510 = load %struct.inode*, %struct.inode** %13, align 8
  %511 = load i32, i32* %24, align 4
  %512 = call i32 @xtTruncate_pmap(i32 %509, %struct.inode* %510, i32 %511)
  store i32 %512, i32* %24, align 4
  %513 = load i32, i32* %24, align 4
  %514 = icmp slt i32 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %500
  %516 = load i32, i32* %17, align 4
  %517 = call i32 @txAbort(i32 %516, i32 1)
  %518 = load i32, i32* %24, align 4
  store i32 %518, i32* %16, align 4
  br label %523

519:                                              ; preds = %500
  %520 = load i32, i32* %17, align 4
  %521 = load i32, i32* @COMMIT_SYNC, align 4
  %522 = call i32 @txCommit(i32 %520, i32 1, %struct.inode** %13, i32 %521)
  store i32 %522, i32* %16, align 4
  br label %523

523:                                              ; preds = %519, %515
  %524 = load i32, i32* %17, align 4
  %525 = call i32 @txEnd(i32 %524)
  %526 = load %struct.inode*, %struct.inode** %13, align 8
  %527 = call %struct.TYPE_10__* @JFS_IP(%struct.inode* %526)
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 0
  %529 = call i32 @mutex_unlock(i32* %528)
  br label %492

530:                                              ; preds = %498
  %531 = load %struct.inode*, %struct.inode** %13, align 8
  %532 = icmp ne %struct.inode* %531, null
  br i1 %532, label %533, label %542

533:                                              ; preds = %530
  %534 = load %struct.inode*, %struct.inode** %13, align 8
  %535 = getelementptr inbounds %struct.inode, %struct.inode* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %533
  %539 = load i32, i32* @COMMIT_Nolink, align 4
  %540 = load %struct.inode*, %struct.inode** %13, align 8
  %541 = call i32 @set_cflag(i32 %539, %struct.inode* %540)
  br label %542

542:                                              ; preds = %538, %533, %530
  br label %543

543:                                              ; preds = %542, %125, %111, %93, %89, %80, %62
  %544 = call i32 @free_UCSname(%struct.component_name* %12)
  br label %545

545:                                              ; preds = %543, %49
  %546 = call i32 @free_UCSname(%struct.component_name* %14)
  br label %547

547:                                              ; preds = %545, %44
  %548 = load %struct.inode*, %struct.inode** %13, align 8
  %549 = icmp ne %struct.inode* %548, null
  br i1 %549, label %550, label %559

550:                                              ; preds = %547
  %551 = load %struct.inode*, %struct.inode** %13, align 8
  %552 = getelementptr inbounds %struct.inode, %struct.inode* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 4
  %554 = call i64 @S_ISDIR(i32 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %550
  %557 = load %struct.inode*, %struct.inode** %13, align 8
  %558 = call i32 @IWRITE_UNLOCK(%struct.inode* %557)
  br label %559

559:                                              ; preds = %556, %550, %547
  %560 = load i32, i32* @COMMIT_Stale, align 4
  %561 = load %struct.inode*, %struct.inode** %6, align 8
  %562 = call i64 @test_cflag(i32 %560, %struct.inode* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %559
  %565 = load %struct.inode*, %struct.inode** %6, align 8
  %566 = getelementptr inbounds %struct.inode, %struct.inode* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = icmp sgt i32 %567, 1
  br i1 %568, label %569, label %572

569:                                              ; preds = %564
  %570 = load %struct.inode*, %struct.inode** %6, align 8
  %571 = call i32 @jfs_truncate_nolock(%struct.inode* %570, i32 0)
  br label %572

572:                                              ; preds = %569, %564
  %573 = load i32, i32* @COMMIT_Stale, align 4
  %574 = load %struct.inode*, %struct.inode** %6, align 8
  %575 = call i32 @clear_cflag(i32 %573, %struct.inode* %574)
  br label %576

576:                                              ; preds = %572, %559
  %577 = load i32, i32* %16, align 4
  %578 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %577)
  %579 = load i32, i32* %16, align 4
  store i32 %579, i32* %5, align 4
  br label %580

580:                                              ; preds = %576, %234
  %581 = load i32, i32* %5, align 4
  ret i32 %581
}

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i64*, %struct.btstack*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @dtEmpty(%struct.inode*) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dtModify(i32, %struct.inode*, %struct.component_name*, i64*, i64, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @commitZeroLink(i32, %struct.inode*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i64*, %struct.btstack*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @current_fs_time(i32) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xtTruncate_pmap(i32, %struct.inode*, i32) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i32) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
